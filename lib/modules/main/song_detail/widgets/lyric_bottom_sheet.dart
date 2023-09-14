import 'package:flutter/material.dart';

import '../../../../global/themes/app_colors.dart';

class LyricBottomSheet extends StatelessWidget {
  const LyricBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.05,
      minChildSize: 0.05,
      maxChildSize: 0.9,
      builder: (context, scrollController) {
        return SingleChildScrollView(
          controller: scrollController,
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 211, 215, 246),
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              border: Border.all(
                width: 0.5,
                color: AppColors.primary600,
              ),
            ),
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 5,
                  decoration: BoxDecoration(
                    color: AppColors.greyG300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'dhhdsadyhdyhuehd7uwhyd7uy7uweyhwueyduwedwuedhuweuwhuwehuwehduewhuhewuh',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
