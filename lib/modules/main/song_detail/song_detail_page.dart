import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_firebase/global/di/di_setup.dart';
import 'package:flutter_base_firebase/global/utils/duration_time.dart';
import 'package:flutter_base_firebase/global/widgets/base_page.dart';
import 'package:flutter_base_firebase/global/widgets/loading_overlay.dart';
import 'package:flutter_base_firebase/modules/main/song_detail/bloc/song_detail_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';

@RoutePage()
class SongDetailPage extends BasePageScreen {
  const SongDetailPage({
    super.key,
    required this.id,
  });

  final String id;

  @override
  State<SongDetailPage> createState() => _SongDetailPageState();
}

class _SongDetailPageState extends BasePageScreenState<SongDetailPage> {
  late final SongDetailBloc _songDetailBloc;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  double currentPosition = 0;
  bool playing = false;
  @override
  void initState() {
    _songDetailBloc = getIt<SongDetailBloc>();
    _songDetailBloc.add(SongDetailEvent.getSingleSong(widget.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final scrSize = MediaQuery.of(context).size;

    return BlocProvider(
      create: (_) => _songDetailBloc,
      child: MultiBlocListener(
        listeners: [
          BlocListener<SongDetailBloc, SongDetailState>(
            listenWhen: (previous, current) => current.failure != null,
            listener: (context, state) {
              handleError(state.failure!);
            },
          ),
        ],
        child: BlocBuilder<SongDetailBloc, SongDetailState>(
          builder: (context, state) {
            final totalDuration =
                state.audioPlayer?.duration?.inMilliseconds.toDouble();
            currentPosition =
                state.audioPlayer?.position.inMilliseconds.toDouble() ?? 0;

            if (state.audioPlayer != null) {
              state.audioPlayer?.positionStream.listen((duration) {
                if (mounted) {
                  // setState(() {
                  //   currentPosition = duration.inMilliseconds.toDouble();
                  // });
                  // if (duration.inMilliseconds.toDouble() == totalDuration) {
                  //   setState(() {
                  //     playing = false;
                  //   });
                  // }
                }
              });

              state.audioPlayer?.playerStateStream.listen((state) {
                if (mounted) {
                  if (state.processingState == ProcessingState.completed) {
                    setState(() {
                      playing = false;
                    });
                  } else {
                    setState(() {
                      playing = state.playing;
                    });
                  }
                }
              });
            }

            // state.audioPlayer?.playingStream.listen((isPlaying) {
            //   print(isPlaying);
            //   setState(() {
            //     playing = isPlaying;
            //   });
            // });

            return LoadingOverlay(
              loading: state.isShowLoading,
              child: Scaffold(
                appBar: AppBar(),
                body: Padding(
                  padding: const EdgeInsets.all(16),
                  child: state.audioPlayer == null || totalDuration == null
                      ? const SizedBox()
                      : Column(
                          children: [
                            Expanded(
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (!state.isShowLoading)
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: CachedNetworkImage(
                                          fit: BoxFit.cover,
                                          height: scrSize.height * 0.4,
                                          // width: scrSize.height * 0.3,
                                          imageUrl: state.song?.imageUrl ?? '',
                                        ),
                                      ),
                                    const SizedBox(height: 32),
                                    Text(
                                      state.song?.name ?? '',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      state.song?.singer ?? '',
                                      style: const TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Slider(
                              value: currentPosition,
                              onChanged: (value) {
                                _songDetailBloc.add(
                                  SongDetailEvent.seekAudio(
                                    Duration(milliseconds: value.toInt()),
                                  ),
                                );
                              },
                              max: max(totalDuration, currentPosition),
                              divisions: (totalDuration.toInt()) > 0
                                  ? totalDuration.toInt()
                                  : 1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  DurationTime.totalDurationFormat(
                                    state.audioPlayer!.position,
                                  ),
                                  style: const TextStyle(fontSize: 12),
                                ),
                                Text(
                                  DurationTime.totalDurationFormat(
                                    state.audioPlayer!.duration ??
                                        Duration.zero,
                                  ),
                                  style: const TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                            const SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.loop),
                                ),
                                const Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.skip_previous,
                                    size: 30,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    if (playing) {
                                      _songDetailBloc.add(
                                        const SongDetailEvent.pauseAudio(),
                                      );
                                    } else {
                                      if (currentPosition == totalDuration) {
                                        _songDetailBloc.add(
                                          const SongDetailEvent.seekAudio(
                                            Duration.zero,
                                          ),
                                        );
                                        _songDetailBloc.add(
                                          const SongDetailEvent.playAudio(),
                                        );
                                      } else {
                                        _songDetailBloc.add(
                                          const SongDetailEvent.playAudio(),
                                        );
                                      }
                                    }
                                  },
                                  icon: Icon(
                                    playing ? Icons.pause : Icons.play_circle,
                                    size: 50,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.skip_next,
                                    size: 30,
                                  ),
                                ),
                                const Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.shuffle),
                                ),
                              ],
                            ),
                            const SizedBox(height: 32),
                          ],
                        ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
