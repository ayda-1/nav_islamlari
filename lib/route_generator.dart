import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nav_islamlari/error_page.dart';
import 'package:nav_islamlari/green_page.dart';
import 'package:nav_islamlari/red_page.dart';
import 'package:nav_islamlari/yellow_page.dart';

//bizden ne istiyorsa route-> onun döndüğü bir class olusturduk
class RouteGenerator {
  //nesne oluşturulmadan oluşturulmasını istefiğimiz için static
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    // debugPrint(settings.name);
    //rota adını verir
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => RedPage());
      case "/yellowPage":
        return MaterialPageRoute(builder: (context) => YellowPage());
      case "/greenPage":
        String name = settings.arguments as String;
        return MaterialPageRoute(builder: (context) => GreenPage(ad: name));
      default:
        return MaterialPageRoute(builder: (context) => ErrorPage());
    }
  }
}
