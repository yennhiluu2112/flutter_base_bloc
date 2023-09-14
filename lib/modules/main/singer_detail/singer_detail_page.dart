import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_ui_firestore/firebase_ui_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_firebase/global/di/di_setup.dart';
import 'package:flutter_base_firebase/global/widgets/base_page.dart';
import 'package:flutter_base_firebase/global/widgets/loading_overlay.dart';
import 'package:flutter_base_firebase/modules/main/singer_detail/bloc/singer_detail_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../routes/app_router.dart';
import '../home/widgets/song_tile.dart';

@RoutePage()
class SingerDetailPage extends BasePageScreen {
  const SingerDetailPage({
    required this.id,
    super.key,
  });

  final String id;

  @override
  State<SingerDetailPage> createState() => _SingerDetailPageState();
}

class _SingerDetailPageState extends BasePageScreenState<SingerDetailPage> {
  late final SingerDetailBloc _singerDetailBloc;

  @override
  void initState() {
    _singerDetailBloc = getIt<SingerDetailBloc>();
    _singerDetailBloc.add(SingerDetailEvent.getSingleSinger(widget.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final scrSize = MediaQuery.of(context).size;
    return BlocProvider(
      create: (_) => _singerDetailBloc,
      child: MultiBlocListener(
        listeners: [
          BlocListener<SingerDetailBloc, SingerDetailState>(
            listenWhen: (previous, current) => current.failure != null,
            listener: (context, state) {
              handleError(state.failure!);
            },
          ),
        ],
        child: BlocBuilder<SingerDetailBloc, SingerDetailState>(
          builder: (context, state) {
            final singer = state.singer;

            return LoadingOverlay(
              loading: state.isShowLoading,
              child: Scaffold(
                appBar: AppBar(),
                body: state.isShowLoading || state.query == null
                    ? const SizedBox()
                    : ListView(
                        children: [
                          ShaderMask(
                            shaderCallback: (rect) {
                              return const LinearGradient(
                                end: Alignment.bottomCenter,
                                colors: [Colors.black, Colors.transparent],
                              ).createShader(
                                Rect.fromLTRB(0, 0, 0, rect.height),
                              );
                            },
                            blendMode: BlendMode.dstIn,
                            child: CachedNetworkImage(
                              imageUrl: singer?.imageUrl ?? '',
                              height: scrSize.height * 0.35,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            singer?.name ?? '',
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            singer?.description ?? 'hhahdahdauhauhdaudaudhu',
                            textAlign: TextAlign.center,
                          ),
                          FirestoreQueryBuilder(
                            query: state.query!,
                            builder: (context, snapshot, child) {
                              return ListView.separated(
                                padding: const EdgeInsets.all(16),
                                itemCount: snapshot.docs.length,
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (_, __) =>
                                    const SizedBox(height: 12),
                                itemBuilder: (context, index) {
                                  final song = snapshot.docs[index].data();

                                  return GestureDetector(
                                    onTap: () {
                                      context.router.push(
                                        SongDetailRoute(
                                          songs: snapshot.docs
                                              .map((e) => e.data())
                                              .toList(),
                                          initialIndex: index,
                                        ),
                                      );
                                    },
                                    child: SongTile(
                                      song: song,
                                    ),
                                  );
                                },
                              );
                            },
                          )
                        ],
                      ),
              ),
            );
          },
        ),
      ),
    );
  }
}
