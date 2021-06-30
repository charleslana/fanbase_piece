import 'package:fanbase_piece/src/constants/constants.dart';
import 'package:fanbase_piece/src/routes/app_routes.dart';
import 'package:fanbase_piece/src/views/characters.dart';
import 'package:fanbase_piece/src/views/favorites.dart';
import 'package:fanbase_piece/src/views/home.dart';
import 'package:fanbase_piece/src/views/logo.dart';
import 'package:fanbase_piece/src/views/splashscreen.dart';
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
        primarySwatch: customSwatchColor,
        fontFamily: 'PiratesWriters',
      ),
      routes: {
        AppRoutes.LOGO: (_) => Logo(),
        AppRoutes.SPLASHSCREEN: (_) => Splashscreen(),
        AppRoutes.HOME: (_) => Home(),
        AppRoutes.FAVORITES: (_) => Favorites(),
        AppRoutes.CHARACTERS: (_) => BaseCharacters(),
      },
    );
  }
}
