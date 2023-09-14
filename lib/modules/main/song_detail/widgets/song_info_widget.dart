import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../global/models/song/song.dart';

class SongInfoWidget extends StatelessWidget {
  const SongInfoWidget({
    super.key,
    required this.song,
  });

  final Song song;

  @override
  Widget build(BuildContext context) {
    final scrSize = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: CachedNetworkImage(
            fit: BoxFit.cover,
            height: scrSize.height * 0.4,
            imageUrl: song.imageUrl ?? '',
          ),
        ),
        const SizedBox(height: 32),
        Text(
          song.name ?? '',
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        Text(
          song.singerName ?? '',
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
