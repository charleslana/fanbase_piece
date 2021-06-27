import 'package:fanbase_piece/src/routes/routes.dart';
import 'package:fanbase_piece/src/views/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.dark,
  ));

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fanbase Piece',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'PiratesWriters',
      ),
      routes: {
        Routes.HOME: (_) => Home(),
      },
    );
  }
}
