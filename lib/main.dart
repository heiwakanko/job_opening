import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart'; //中華フォント対策
import 'package:flutter_web_plugins/flutter_web_plugins.dart'; //URLから「#」をデフォルトで外す
import 'package:job_opening/screens/home_screen.dart';

void main() {
  setUrlStrategy(PathUrlStrategy()); //URLから「#」をデフォルトで外す
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "埼玉県さいたま市のタクシー運転手募集 | 平和観光 暴力団等反社会的勢力排除宣言",
      theme: ThemeData(
        colorSchemeSeed: const Color.fromRGBO(0, 23, 57, 1),
        useMaterial3: true,
      ),
      // -----中華フォント対策-----
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("ja", "JP"),
      ],
      // -----ここまで-----
      home: const HomeScreen(),
    );
  }
}
