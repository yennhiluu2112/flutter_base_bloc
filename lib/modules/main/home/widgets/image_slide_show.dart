import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import '../../../../gen/assets.gen.dart';

class ImageSlideShow extends StatelessWidget {
  const ImageSlideShow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      width: double.infinity,
      isLoop: true,
      autoPlayInterval: 3000,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Assets.images.slide1.image(
            fit: BoxFit.cover,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Assets.images.slide2.image(
            fit: BoxFit.cover,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Assets.images.slide3.image(
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
