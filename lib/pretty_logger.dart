library pretty_logger;

import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';

/// deprecated
///  use [PLog] instead
/// example:
/// ```dart
/// PLog.info('hello world');
/// ```
///
class Logger {
  // main.dart

  // Blue text
  /// param [msg] is the message to be logged to the console
  /// example:
  /// ```dart
  /// PLog.info('hello world');
  /// ```
  static void info(String msg) {
    if (kDebugMode) developer.log('\x1B[34m$msg\x1B[0m');
  }

  // Green text
  /// param [msg] is the message to be logged to the console
  /// example:
  ///  ```dart
  ///  PLog.success('hello world');
  /// ```
  ///
  static void success(String msg) {
    if (kDebugMode) developer.log('\x1B[32m$msg\x1B[0m');
  }

  // Yellow text
  static void warning(String msg) {
    if (kDebugMode) developer.log('\x1B[33m$msg\x1B[0m');
  }

  // Red text
  static void error(String msg) {
    if (kDebugMode) developer.log('\x1B[31m$msg\x1B[0m');
  }

  static void black(String msg) {
    if (kDebugMode) developer.log('\x1B[30m$msg\x1B[0m');
  }

  static void white(String msg) {
    if (kDebugMode) developer.log('\x1B[37m$msg\x1B[0m');
  }

  static void red(String msg) {
    if (kDebugMode) developer.log('\x1B[31m$msg\x1B[0m');
  }

  static void green(String msg) {
    if (kDebugMode) developer.log('\x1B[32m$msg\x1B[0m');
  }

  static void yellow(String msg) {
    if (kDebugMode) developer.log('\x1B[33m$msg\x1B[0m');
  }

  static void blue(String msg) {
    if (kDebugMode) developer.log('\x1B[34m$msg\x1B[0m');
  }

  static void cyan(String msg) {
    if (kDebugMode) developer.log('\x1B[36m$msg\x1B[0m');
  }
}

class PLog {
  // main.dart

  // Blue text
  /// param [msg] is the message to be logged to the console
  /// example:
  /// ```dart
  /// PLog.info('hello world');
  /// ```
  ///
  static void info(String msg) {
    if (kDebugMode) developer.log('\x1B[34m$msg\x1B[0m');
  }

  // Green text
  /// param [msg] is the message to be logged to the console
  /// example:
  /// ```dart
  /// PLog.success('hello world');
  /// ```
  ///
  static void success(String msg) {
    if (kDebugMode) developer.log('\x1B[32m$msg\x1B[0m');
  }

  // Yellow text
  /// param [msg] is the message to be logged to the console
  static void warning(String msg) {
    if (kDebugMode) developer.log('\x1B[33m$msg\x1B[0m');
  }

  /// param [msg] is the message to be logged to the console
  /// Red text
  static void error(String msg) {
    if (kDebugMode) developer.log('\x1B[31m$msg\x1B[0m');
  }

  /// param [msg] is the message to be logged to the console
  static void black(String msg) {
    if (kDebugMode) developer.log('\x1B[30m$msg\x1B[0m');
  }

  /// param [msg] is the message to be logged to the console
  static void white(String msg) {
    if (kDebugMode) developer.log('\x1B[37m$msg\x1B[0m');
  }

  /// param [msg] is the message to be logged to the console
  static void red(String msg) {
    if (kDebugMode) developer.log('\x1B[31m$msg\x1B[0m');
  }

  /// param [msg] is the message to be logged to the console
  static void green(String msg) {
    if (kDebugMode) developer.log('\x1B[32m$msg\x1B[0m');
  }

  /// param [msg] is the message to be logged to the console
  static void yellow(String msg) {
    if (kDebugMode) developer.log('\x1B[33m$msg\x1B[0m');
  }

  /// param [msg] is the message to be logged to the console
  static void blue(String msg) {
    if (kDebugMode) developer.log('\x1B[34m$msg\x1B[0m');
  }

  /// param [msg] is the message to be logged to the console
  static void cyan(String msg) {
    if (kDebugMode) developer.log('\x1B[36m$msg\x1B[0m');
  }

  /// print text to console in a custom color
  /// param [msg] is the message to be logged to the console
  static void custom(String msg, [String? hexColor]) {
    if (hexColor == null ||
        !hexColor.startsWith('#') ||
        (hexColor.length != 7 && hexColor.length != 4)) {
      PLog.blue(msg);
      return;
    }

    hexColor = hexColor.replaceAll('#', '');
    if (hexColor.length == 3) {
      hexColor =
          '${hexColor[0]}${hexColor[0]}${hexColor[1]}${hexColor[1]}${hexColor[2]}${hexColor[2]}';
    }

    int red = int.parse(hexColor.substring(0, 2), radix: 16);
    int green = int.parse(hexColor.substring(2, 4), radix: 16);
    int blue = int.parse(hexColor.substring(4, 6), radix: 16);

    String colorEscapeCode = '\x1B[38;2;$red;$green;${blue}m';

    if (kDebugMode) developer.log('$colorEscapeCode$msg\x1B[0m');
  }
}
