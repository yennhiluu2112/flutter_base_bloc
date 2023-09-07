import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_ui_firestore/firebase_ui_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_firebase/global/models/song/song.dart';
import 'package:flutter_base_firebase/global/widgets/base_page.dart';
import 'package:flutter_base_firebase/global/widgets/loading_overlay.dart';
import 'package:flutter_base_firebase/modules/main/home/bloc/home_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../global/di/di_setup.dart';

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
                  title: const Text('Home'),
                ),
                body: state.songRef == null
                    ? const SizedBox()
                    : FirestoreQueryBuilder(
                        query: state.songRef!,
                        builder: (context, snapshot, child) {
                          if (snapshot.hasError) {
                            return Text(
                              snapshot.error.toString(),
                            );
                          }

                          return ListView.separated(
                            padding: const EdgeInsets.all(16),
                            itemCount: snapshot.docs.length,
                            separatorBuilder: (_, __) =>
                                const SizedBox(height: 12),
                            itemBuilder: (context, index) {
                              return SongTile(
                                song: snapshot.docs[index].data(),
                              );
                            },
                          );
                        },
                      ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class SongTile extends StatelessWidget {
  const SongTile({
    super.key,
    required this.song,
  });
  final Song song;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
            imageUrl: song.imageUrl ?? '',
            width: 70,
            height: 70,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                song.name ?? '',
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                song.singer ?? '',
                style: const TextStyle(),
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.keyboard_control),
        )
      ],
    );
  }
}
