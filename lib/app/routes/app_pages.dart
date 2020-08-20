import 'package:get/route_manager.dart';
import 'package:login_firebase/app/bindings/home_binding.dart';
import 'package:login_firebase/app/bindings/login_binding.dart';
import 'package:login_firebase/app/routes/app_routes.dart';
import 'package:login_firebase/app/ui/android/REGISTER_page.dart';
import 'package:login_firebase/app/ui/android/home_page.dart';
import 'package:login_firebase/app/ui/android/initial_page.dart';
import 'package:login_firebase/app/ui/android/login_page.dart';

class AppPages{
  static final routes = [
    GetPage(name: Routes.INITIAL, page: () => InitialPage(),),
    GetPage(name: Routes.LOGIN, page: () => LoginPage(), binding: LoginBinding()),
    GetPage(name: Routes.REGISTER, page: () => RegisterPage()),
    GetPage(name: Routes.HOME, page: () => HomePage(), binding: HomeBinding()),
  ];
}