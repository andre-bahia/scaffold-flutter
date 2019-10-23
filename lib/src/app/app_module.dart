import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:scaffold_flutter/src/app/splash_screen.dart';
import 'package:scaffold_flutter/src/home/home_screen.dart';
import 'app_bloc.dart';
import 'app_screen.dart';

class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => AppBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => AppScreen();

  static Inject get to => Inject<AppModule>.of();

  static Map<String, WidgetBuilder> routes(BuildContext context) => {
    '/': (context) => MyHomePage(title: ''),
    '/splash': (context) => SplashScreen()
  };
}