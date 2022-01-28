import 'package:buyit/utils/my_string.dart';
import 'package:get/get_navigation/src/root/internacionalization.dart';

import 'English.dart';
import 'arabi.dart';
import 'frenh.dart';

class LocaliztionApp extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    ene: en,
    ara: ar,
    frf: fr,
  };
}