
import 'package:get/get.dart';
import 'package:pas_flutter_11_s1/pages/login_page.dart';
import 'package:pas_flutter_11_s1/pages/main_menu.dart';



class Routes {
  static const String login = "/login_page";
  static const String main_menu = "/main_menu";

  static final pages = [
    GetPage(
      name: main_menu,
      page: () => MainMenu(),
    ),
    GetPage(
      name: login,
      page: () => LoginPage(),
    ),
  ];
}