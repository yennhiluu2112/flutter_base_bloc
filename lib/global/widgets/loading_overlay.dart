import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import 'indicator_loading.dart';

class LoadingOverlay extends StatelessWidget {
  const LoadingOverlay({
    super.key,
    required this.loading,
    required this.child,
    this.text,
  });

  final bool loading;
  final Widget child;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (loading)
          SizedBox.expand(
            child: ColoredBox(
              color: AppColors.greyG100.withOpacity(0.5),
              child: text != null
                  ? Scaffold(
                      backgroundColor: Colors.transparent,
                      body: Center(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 20),
                          margin: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: AppColors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const IndicatorLoading(
                                color: AppColors.primary600,
                                size: 23,
                              ),
                              const SizedBox(width: 16),
                              Flexible(
                                child: Text(
                                  text ?? '',
                                  style: const TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  maxLines: 2,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  : const Center(
                      child: IndicatorLoading(
                        color: AppColors.primary600,
                      ),
                    ),
            ),
          )
      ],
    );
  }
}
