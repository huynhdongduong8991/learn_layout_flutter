import 'package:flutter/material.dart';

mixin Logging {
  final dateTime = DateTime.now();

  void logging(String msg) {
    debugPrint('[LOG] time: $dateTime - $msg');
  }
}