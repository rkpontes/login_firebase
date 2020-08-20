import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:login_firebase/app/routes/app_pages.dart';
import 'package:login_firebase/app/routes/app_routes.dart';
import 'package:login_firebase/app/translations/app_translations.dart';
import 'package:login_firebase/app/ui/theme/app_theme.dart';

void main() async{
  await GetStorage.init('login_firebase');
  GetStorage box = GetStorage('login_firebase');
  runApp(
    GetMaterialApp(
      title: 'Login Firebase',
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      initialRoute: Routes.INITIAL,
      theme: box.read("theme") == "dark" ? appThemeDataDark : appThemeData ?? appThemeData,
      darkTheme: appThemeDataDark,
      themeMode: ThemeMode.system,
      locale: Locale('pt', 'BR'),
      translationsKeys: AppTranslation.translations,
    )
  );
}

