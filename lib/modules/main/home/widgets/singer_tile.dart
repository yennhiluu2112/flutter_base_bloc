import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../global/models/singer/singer.dart';
import '../../../../routes/app_router.dart';

class SingerTile extends StatelessWidget {
  const SingerTile({
    super.key,
    required this.singer,
  });

  final Singer singer;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.push(
        SingerDetailRoute(id: singer.id!),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: CachedNetworkImage(
              imageUrl: singer.imageUrl ?? '',
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            singer.name ?? '',
          )
        ],
      ),
    );
  }
}
