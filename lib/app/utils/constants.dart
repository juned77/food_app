import 'package:flutter/material.dart';

typedef FromJson<T> = T Function(dynamic json);

const String kDateFormat_1 = 'dd MMMM yyyy'; //13 July 2022
const String kDateFormat_2 = 'dd/MM/yyyy'; //13/07/2022
const int kProductListItemWidth = 170;
const int kProductitemHeight = 320;
const double kSeprator4Px = 4;
const double kSeprator7Px = 7;
const double kSeprator10Px = 10;
const double kSeprator12Px = 12;
const double kSeprator20Px = 20;
const double kSeprator30Px = 30;
const double kSeprator40Px = 40;
const double kSeprator50Px = 50;

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
final GlobalKey connectivityDialogkey = GlobalKey<NavigatorState>();
final GlobalKey mainAppDialogkey = GlobalKey<NavigatorState>();

const InputBorder kTextFeildInputBorder = OutlineInputBorder(
  borderSide: BorderSide(color: Colors.grey, width: 0.5),
);

List<String> kWorkoutsArray = [
  'Yoga',
  'Workouts',
  'Glossary of stretches',
  'Challanges',
];

final RegExp kEmailRegex = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

SizedBox kShrinkedBox = const SizedBox.shrink();

//Preferences keys
enum PreferencesKeys {
  isAuthenticated('isAuthenticated'),
  credsSaved('credsSaved'),
  authToken('authToken'),
  password('password'),
  email('email');

  final String id;

  const PreferencesKeys(this.id);
}

enum AppUsersType {
  none('none', -1),
  pregnant('Pregnant', 1),
  hasABaby('hasABaby', 2);

  final String key;
  final int id;

  const AppUsersType(this.key, this.id);
}
