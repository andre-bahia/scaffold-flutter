import 'package:flutter/material.dart';
import 'package:scaffold_flutter/src/app/app_module.dart';
import 'package:scaffold_flutter/src/app/splash_screen.dart';
import 'package:scaffold_flutter/src/home/home_screen.dart';

class AppScreen extends StatefulWidget {

  @override
  _AppScreenState createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
      return MaterialApp(
        title: 'Flutter Demo',
        initialRoute: "/splash",
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        routes: _routes(context),
        debugShowCheckedModeBanner: false,
      );
    }

    Map<String, WidgetBuilder> _routes(BuildContext context){
        final all = {
          ...AppModule.routes(context),
        };
        
        return all;
    }
}