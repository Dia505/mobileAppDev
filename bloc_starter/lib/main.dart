import 'package:bloc_starter/app.dart';
import 'package:bloc_starter/service locator/service_locator.dart';
import 'package:flutter/material.dart';

void main() async {
  //ensures that everything required by flutter is initialized
  WidgetsFlutterBinding.ensureInitialized();
  //initializing all objects of cubit from initDependencies
  await initDependencies();

  runApp(
    const App(),
  );
}
