import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../utils/constants.dart';

abstract class BaseStatelessWidget extends StatelessWidget {
  const BaseStatelessWidget({Key? key}) : super(key: key);

  showLoadingDialog(BuildContext context) {}

  hideLoadingDialog(BuildContext context) {}

  List<Widget> widgetWithSeprator({
    required Widget widget,
    bool visible = true,
    double? height,
    double? width,
  }) {
    return visible
        ? [
            widget,
            SizedBox(height: height, width: width),
          ]
        : [];
  }

  showSnackBar(BuildContext context, {String message = '', bool isError = false}) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(
            message,
            style: TextStyle(color: isError ? Colors.white : null),
          ),
          duration: const Duration(seconds: 2),
          backgroundColor: isError ? Colors.red : null,
        ),
      );
  }

  showErrorSnackBar(BuildContext context, {String message = '', bool isError = true, Widget? content}) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: content ??
              Text(
                message,
                style: TextStyle(color: isError ? Colors.white : null),
              ),
          duration: const Duration(seconds: 4),
          backgroundColor: isError ? Colors.red : null,
        ),
      );
  }

  unFocusFromAll() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  haptic() {
    HapticFeedback.heavyImpact();
  }

  Future<T?> pushScreen<T>({BuildContext? context, required Widget page}) async {
    T? response = await navigatorKey.currentState?.push(MaterialPageRoute(
      builder: (context) => page,
    ));
    return response;
  }

  popScreen({Object? result}) => navigatorKey.currentState?.pop(result);

  pushReplacement({BuildContext? context, required Widget page}) {
    navigatorKey.currentState?.pushReplacement(
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  pushAndRemoveUntil({BuildContext? context, required Widget page}) {
    navigatorKey.currentState?.pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => page,
      ),
      (route) => false,
    );
  }

  AppLocalizations getString(BuildContext context) {
    return AppLocalizations.of(context)!;
  }

  T readProvider<T>(BuildContext context, T cubnit) {
    return context.read<T>();
  }
}
