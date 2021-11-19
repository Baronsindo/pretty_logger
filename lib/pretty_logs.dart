library pretty_logs;

import 'dart:developer' as developer;
import 'package:flutter/foundation.dart';

/// A Calculator.
class Logger {
  // main.dart

  // Blue text
  static void info(String msg) {
    if (kDebugMode) developer.log('\x1B[34m$msg\x1B[0m');
  }

  // Green text
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
