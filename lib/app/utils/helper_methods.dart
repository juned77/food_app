import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

import 'constants.dart';

String formatDate(DateTime date, {String? format}) {
  return DateFormat(format ?? 'dd-MM-yyyy').format(date);
}

DecorationImage getDarkenImage({required String path}) {
  return DecorationImage(
    fit: BoxFit.cover,
    colorFilter: ColorFilter.mode(
      Colors.black.withOpacity(0.4),
      BlendMode.darken,
    ),
    image: AssetImage(path),
  );
}

String? validateField({required String? value, required String emptyStringMsg}) {
  if (value == null || value == '') {
    return emptyStringMsg;
  } else {
    return null;
  }
}

String? validateEmail(String? value, {required String emptyStringMsg, required String invalidStringMsg}) {
  if (value == null || value == '') {
    return emptyStringMsg;
  } else if (!kEmailRegex.hasMatch(value)) {
    return invalidStringMsg;
  } else {
    return null;
  }
}

String? validatePassword(String? value, {required String emptyStringMsg, required String invalidStringMsg}) {
  if (value == null || value == '') {
    return emptyStringMsg;
  } else if (value.length < 6) {
    return invalidStringMsg;
  } else {
    return null;
  }
}

Future<void> openUrl(Uri url) async {
  if (!await launchUrl(url)) {
    throw 'Could not launch $url';
  }
}
