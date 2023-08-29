import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_firebase/global/providers/app_settings_provider.dart';
import 'package:flutter_base_firebase/global/themes/app_colors.dart';
import 'package:flutter_base_firebase/routes/app_router.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../gen/assets.gen.dart';

@RoutePage()
class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final pageController = PageController();
  bool isLastPage = false;
  List<AssetGenImage> onboardImages = [
    Assets.images.intro1,
    Assets.images.intro2,
    Assets.images.intro3,
  ];

  final titles = ["Play The Beat", "Live The Life", "Capture The Moment"];
  final subtitles = [
    "Most beginner producers learn make creating by simple beats",
    "In our daily lives, we often rush tasks trying to get them finish",
    "You are not alone. You have unique ability to go to another"
  ];

  void handleSkipLaunch() {
    context.read<AppSettingsProvider>().saveFirstLaunch();
    context.router.replaceAll([const LoginRoute()]);
  }

  void onPageViewChanged(int page) {
    setState(() {
      isLastPage = page == onboardImages.length - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final scrHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: PageView(
                  onPageChanged: onPageViewChanged,
                  controller: pageController,
                  children: List.generate(
                    onboardImages.length,
                    (index) => Column(
                      children: [
                        SizedBox(
                          height: scrHeight * 0.5,
                          child: onboardImages[index].image(),
                        ),
                        Text(
                          titles[index],
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          subtitles[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmoothPageIndicator(
                    controller: pageController,
                    count: onboardImages.length,
                    effect: const SlideEffect(
                      spacing: 8,
                      radius: 100,
                      dotWidth: 32,
                      dotHeight: 8,
                      paintStyle: PaintingStyle.stroke,
                      strokeWidth: 1,
                      activeDotColor: AppColors.primary600,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      if (pageController.page! >= onboardImages.length - 1) {
                        handleSkipLaunch();
                      } else {
                        pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.fastOutSlowIn,
                        );
                      }
                    },
                    child: Text(isLastPage ? 'Done' : 'Next'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
