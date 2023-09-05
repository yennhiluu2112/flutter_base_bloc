import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_firebase/gen/assets.gen.dart';
import 'package:flutter_base_firebase/global/models/failure/failure.dart';
import 'package:flutter_base_firebase/global/widgets/dialog_widget.dart';

abstract class BasePageScreen extends StatefulWidget {
  const BasePageScreen({super.key});
}

abstract class BasePageScreenState<Page extends BasePageScreen>
    extends State<Page> {
  void handleError(Failure failure) {
    failure.when(
      unknown: () {
        showConfirmationDialog(contentText: 'Unknown error happened');
      },
      firebase: (e) {
        showConfirmationDialog(contentText: e.message);
      },
      illegalData: (data) {
        showConfirmationDialog(contentText: 'Illegal data $data');
      },
      network: () {
        showConfirmationDialog(contentText: 'Network error');
      },
      other: (e) {
        showConfirmationDialog(contentText: e);
      },
    );
  }

  void showConfirmationDialog({Function()? onCancel, String? contentText}) {
    showDialog(
        context: context,
        builder: (context) {
          return DialogWidget(
            onTapNegativeButton: null,
            onTapPositiveButton: () {
              context.popRoute();
              onCancel?.call();
            },
            titleText: 'Error',
            contentText: contentText,
            image: Assets.icons.error.image(width: 50, height: 50),
          );
        });
  }
}
