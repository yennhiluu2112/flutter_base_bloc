import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_firebase/global/providers/app_settings_provider.dart';
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
    Assets.icons.dev,
    Assets.icons.prod,
  ];

  void handleSkipLaucnh() {
    context.read<AppSettingsProvider>().saveFirstLaunch();
  }

  void onPageViewChanged(int page) {
    setState(() {
      isLastPage = page == onboardImages.length - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: pageController,
                children: List.generate(
                  onboardImages.length,
                  (index) => Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: onboardImages[index].image(),
                      ),
                      const Text('hashuahsjs')
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: [
                SmoothPageIndicator(
                  controller: pageController,
                  count: onboardImages.length,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(isLastPage ? 'Done' : 'Next'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
