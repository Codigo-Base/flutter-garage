import 'dart:async';
import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_garage/ui/app.dart';

void main() {
  runZonedGuarded(() {
    WidgetsFlutterBinding.ensureInitialized();
    FlutterError.onError = (details) {
      print('Flutter error');
      Zone.current
        .handleUncaughtError(details.exception, details.stack ?? StackTrace.empty);
    };
    runApp(MyApp());
  }, (error, stack) {
    print('Zone error');
    if (kDebugMode) {
      log(error.toString(), stackTrace: stack);
    } else {
      // Enviar error a backend
    }
  });

}