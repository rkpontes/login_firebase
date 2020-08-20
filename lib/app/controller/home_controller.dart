import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:login_firebase/app/data/model/user_model.dart';
import 'package:login_firebase/app/ui/theme/app_theme.dart';

class HomeController extends GetxController {

  final User user = Get.arguments;
  GetStorage box = GetStorage('login_firebase');
  RxString txtThemeButtom = "TEXT_BT_THEME_DARK".obs;


  @override
  void onInit() {
    txtThemeButtom.value = Get.isDarkMode ? "TEXT_BT_THEME_LIGHT" : "TEXT_BT_THEME_DARK";
    super.onInit();
  }


  void changeTheme(){
    if(Get.isDarkMode){
      box.write("theme", "light");
      txtThemeButtom.value = "TEXT_BT_THEME_DARK";
      Get.changeTheme(appThemeData);
    }else{
      box.write("theme", "dark");
      txtThemeButtom.value = "TEXT_BT_THEME_LIGHT";
      Get.changeTheme(appThemeDataDark);
    }
  }


}