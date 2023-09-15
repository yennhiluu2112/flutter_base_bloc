import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_ui_firestore/firebase_ui_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_firebase/global/widgets/base_page.dart';
import 'package:flutter_base_firebase/global/widgets/label.dart';
import 'package:flutter_base_firebase/global/widgets/loading_overlay.dart';
import 'package:flutter_base_firebase/modules/main/home/bloc/home_bloc.dart';
import 'package:flutter_base_firebase/routes/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../global/di/di_setup.dart';
import 'widgets/image_slide_show.dart';
import 'widgets/singer_tile.dart';
import 'widgets/song_tile.dart';

@RoutePage()
class HomePage extends BasePageScreen {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BasePageScreenState<HomePage> {
  late final HomeBloc _homeBloc;

  @override
  void initState() {
    _homeBloc = getIt<HomeBloc>();
    _homeBloc.add(const HomeEvent.getSongRef());
    _homeBloc.add(const HomeEvent.getSingerRef());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _homeBloc,
      child: MultiBlocListener(
        listeners: [
          BlocListener<HomeBloc, HomeState>(
            listenWhen: (previous, current) => current.failure != null,
            listener: (context, state) {
              handleError(state.failure!);
            },
          ),
        ],
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return LoadingOverlay(
              loading: state.isShowLoading,
              child: Scaffold(
                appBar: AppBar(
                  title: Text('Home.Hello'.tr()),
                  centerTitle: false,
                ),
                body: state.songRef == null || state.singerRef == null
                    ? const SizedBox()
                    : ListView(
                        padding: const EdgeInsets.all(16),
                        children: [
                          const ImageSlideShow(),
                          Label('Home.Singers'.tr()),
                          SizedBox(
                            height: 100,
                            child: FirestoreQueryBuilder(
                              query: state.singerRef!,
                              builder: (context, snapshot, child) {
                                if (snapshot.hasError) {
                                  return Text(
                                    snapshot.error.toString(),
                                  );
                                }

                                return ListView.separated(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (_, __) =>
                                      const SizedBox(width: 16),
                                  itemCount: snapshot.docs.length,
                                  itemBuilder: (context, index) {
                                    final singer = snapshot.docs[index].data();
                                    return SingerTile(singer: singer);
                                  },
                                );
                              },
                            ),
                          ),
                          Label('Home.Songs'.tr()),
                          FirestoreQueryBuilder(
                            query: state.songRef!,
                            builder: (context, snapshot, child) {
                              if (snapshot.hasError) {
                                return Text(
                                  snapshot.error.toString(),
                                );
                              }

                              return ListView.separated(
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
                                    child: SongTile(song: song),
                                  );
                                },
                              );
                            },
                          ),
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
