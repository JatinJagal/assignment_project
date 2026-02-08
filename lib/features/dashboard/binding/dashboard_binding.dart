import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:shopy_assignment/features/cart/controller/cart_controller.dart';
import 'package:shopy_assignment/features/dashboard/controller/dashboard_controller.dart';
import 'package:shopy_assignment/features/home/controller/home_controller.dart';
import 'package:shopy_assignment/features/products/controller/products_controller.dart';
import 'package:shopy_assignment/features/profile/controller/profile_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DashboardController());
    Get.put(HomeController());
    Get.put(CartController());
    Get.put(ProfileController());
    Get.put(ProductsController());
  }
}
