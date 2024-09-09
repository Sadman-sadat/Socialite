import 'package:get/get.dart';
import 'package:socialite/presentation/state_holders/main_bottom_nav_bar_controller.dart';

class ControllerBinder extends Bindings{
  @override
  void dependencies() {
    Get.put(MainBottomNavBarController());
  }
}