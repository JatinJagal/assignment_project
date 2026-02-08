import 'package:get/get.dart';
import 'package:shopy_assignment/features/authentication/login/binding/login_binding.dart';
import 'package:shopy_assignment/features/authentication/login/view/login_view.dart';
import 'package:shopy_assignment/features/dashboard/binding/dashboard_binding.dart';
import 'package:shopy_assignment/features/dashboard/view/dashboard_view.dart';
import 'package:shopy_assignment/features/products/binding/products_binding.dart';
import 'package:shopy_assignment/features/products/view/products_view.dart';
import 'package:shopy_assignment/features/splash/binding/splash_binding.dart';
import 'package:shopy_assignment/features/splash/view/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCTS,
      page: () => const ProductsView(),
      binding: ProductsBinding(),
    ),
  ];
}
