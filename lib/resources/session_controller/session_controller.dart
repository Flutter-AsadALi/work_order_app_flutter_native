// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class SessionController {
  static final SessionController _session = SessionController._internel();

  static Color themeTextColor = const Color.fromRGBO(183, 204, 115, 1);
  static Color themeDarkColor = const Color.fromRGBO(153, 214, 115, 1);
  static Color themeLightColor = const Color.fromRGBO(201, 214, 115, 1);

  factory SessionController() {
    return _session;
  }

  SessionController._internel();
}
