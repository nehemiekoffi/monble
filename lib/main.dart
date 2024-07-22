import 'package:flutter/material.dart';
import 'package:monble/app.dart';
import 'package:monble/injection_container.dart';

/// The entry point of the app
/// Here we setup all the app need before running it :
/// - Setup injection container
/// - Initialize some plugins or services
void main() async {
  // Setup injection container
  setupInjectionContainer();

  // Run the app
  runApp(const MonBleApp());
}
