import 'package:flutter/material.dart';
import 'package:nav_islamlari/error_page.dart';
import 'package:nav_islamlari/green_page.dart';
import 'package:nav_islamlari/red_page.dart';
import 'package:nav_islamlari/route_generator.dart';
import 'package:nav_islamlari/yellow_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /* burayı yorumladık ongenerateroute kuklanabilmek icin
      routes: {
        "/": (context) => RedPage(), //redPage'i kök dizn yaptk ana sayfamız
        "/yellowPage": (context) =>
            YellowPage(), // bunlar da / ile baslar yani kök dizinin altında olmalı
        "/greenPage": (context) => GreenPage(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => ErrorPage());
      }, //bilinmeyen yolda buraya gidio
      */
      onGenerateRoute: RouteGenerator.routeGenerator,

      //sadece sayfa açmaz aynı zamanda. veri aktarimi olabilmesi için,
      //route_generator classı olusturduk, onun dönmesini istediği için
      debugShowCheckedModeBanner: false,
      //home: RedPage(),
      // kök dizini yukarıda yaptıgımız için bunu de aktif yapmammız lazım
      theme: ThemeData(
        textTheme: TextTheme(
          headlineMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
