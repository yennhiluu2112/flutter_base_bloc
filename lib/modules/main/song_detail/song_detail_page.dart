import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_firebase/global/di/di_setup.dart';
import 'package:flutter_base_firebase/global/enum/audio_loop_mode.dart';
import 'package:flutter_base_firebase/global/models/song/song.dart';
import 'package:flutter_base_firebase/global/utils/duration_time.dart';
import 'package:flutter_base_firebase/global/widgets/base_page.dart';
import 'package:flutter_base_firebase/global/widgets/loading_overlay.dart';
import 'package:flutter_base_firebase/modules/main/song_detail/bloc/song_detail_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';

import 'widgets/lyric_bottom_sheet.dart';
import 'widgets/song_info_widget.dart';

@RoutePage()
class SongDetailPage extends BasePageScreen {
  const SongDetailPage({
    super.key,
    required this.songs,
    this.initialIndex = 0,
  });

  final List<Song> songs;
  final int initialIndex;

  @override
  State<SongDetailPage> createState() => _SongDetailPageState();
}

class _SongDetailPageState extends BasePageScreenState<SongDetailPage> {
  late final SongDetailBloc _songDetailBloc;
  final pageController = PageController();
  double currentPosition = 0;
  double totalDuration = 0;
  bool playing = false;

  @override
  void initState() {
    _songDetailBloc = getIt<SongDetailBloc>();
    _songDetailBloc.add(SongDetailEvent.initAudioPlayer(
      widget.songs,
      widget.initialIndex,
    ));
    super.initState();
  }

  void onPageChanged(int index) {
    _songDetailBloc.add(
      SongDetailEvent.seekAudioWithIndex(
        Duration.zero,
        index,
      ),
    );
  }

  void onChangedSlider(double value) {
    _songDetailBloc.add(
      SongDetailEvent.seekAudio(
        Duration(milliseconds: value.toInt()),
      ),
    );
  }

  void setLoopMode() {
    _songDetailBloc.add(
      const SongDetailEvent.setLoopMode(),
    );
  }

  void onSkipPrevious(SongDetailState state) {
    pageController.jumpToPage(state.currentIndex - 1);
    _songDetailBloc.add(
      const SongDetailEvent.seekAudioToPrevious(),
    );
  }

  void onSkipNext(SongDetailState state) {
    pageController.jumpToPage(state.currentIndex + 1);
    _songDetailBloc.add(
      const SongDetailEvent.seekAudioToNext(),
    );
  }

  void handlePlayPause() {
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
  }

  void setShuffle(SongDetailState state) {
    _songDetailBloc.add(
      SongDetailEvent.setShuffleModeEnabled(
        !state.isShuffled,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
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
            totalDuration =
                state.audioPlayer?.duration?.inMilliseconds.toDouble() ?? 0;
            currentPosition =
                state.audioPlayer?.position.inMilliseconds.toDouble() ?? 0;

            if (state.audioPlayer != null) {
              state.audioPlayer!.positionStream.listen((duration) {
                if (mounted) {
                  setState(() {
                    currentPosition = duration.inMilliseconds.toDouble();
                  });
                }
              });

              state.audioPlayer!.playerStateStream.listen((state) {
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

              state.audioPlayer!.currentIndexStream.listen((index) {
                if (mounted) {
                  if (state.currentIndex != index) {
                    pageController.jumpToPage(index!);
                    _songDetailBloc.add(
                      SongDetailEvent.changeCurrentIndex(index),
                    );
                  }
                }
              });
            }

            if (state.audioPlayer == null) {
              return const SizedBox();
            }

            return LoadingOverlay(
              loading: state.isShowLoading,
              child: Scaffold(
                appBar: AppBar(),
                body: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Expanded(
                            child: Center(
                              child: PageView(
                                physics: state.loopMode == AudioLoopMode.one
                                    ? const NeverScrollableScrollPhysics()
                                    : null,
                                controller: pageController,
                                onPageChanged: onPageChanged,
                                children: List.generate(
                                  widget.songs.length,
                                  (index) {
                                    final song = widget.songs[index];
                                    return SongInfoWidget(song: song);
                                  },
                                ),
                              ),
                            ),
                          ),
                          Slider(
                            value: currentPosition,
                            onChanged: onChangedSlider,
                            max: max(totalDuration, currentPosition),
                            divisions: totalDuration.toInt() > 0
                                ? totalDuration.toInt()
                                : 1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                DurationTime.totalDurationFormat(
                                  Duration(
                                    milliseconds: currentPosition.toInt(),
                                  ),
                                ),
                                style: const TextStyle(fontSize: 12),
                              ),
                              Text(
                                DurationTime.totalDurationFormat(
                                  Duration(
                                    milliseconds: totalDuration.toInt(),
                                  ),
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
                                onPressed: setLoopMode,
                                icon: Icon(state.loopMode.icon()),
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () => onSkipPrevious(state),
                                icon: const Icon(
                                  Icons.skip_previous,
                                  size: 30,
                                ),
                              ),
                              IconButton(
                                onPressed: handlePlayPause,
                                icon: Icon(
                                  playing ? Icons.pause : Icons.play_circle,
                                  size: 50,
                                ),
                              ),
                              IconButton(
                                onPressed: () => onSkipNext(state),
                                icon: const Icon(
                                  Icons.skip_next,
                                  size: 30,
                                ),
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () => setShuffle(state),
                                icon: Icon(
                                  state.isShuffled
                                      ? Icons.shuffle_on_outlined
                                      : Icons.shuffle,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 32),
                        ],
                      ),
                      const LyricBottomSheet(),
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
