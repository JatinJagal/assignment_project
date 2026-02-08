import 'package:get/get.dart';
import 'package:shopy_assignment/features/products/controller/products_controller.dart';

class ProductsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductsController());
  }
}
