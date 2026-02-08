import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shopy_assignment/core/global/constants/app_colors.dart';
import 'package:shopy_assignment/core/global/style/style.dart';
import 'package:shopy_assignment/core/utils/common_widgets/common_dialogbox.dart';
import 'package:shopy_assignment/features/cart/view/cart_view.dart';
import 'package:shopy_assignment/features/dashboard/controller/dashboard_controller.dart';
import 'package:shopy_assignment/features/home/view/home_view.dart';
import 'package:shopy_assignment/features/profile/view/profile_view.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (didPop) {
          return;
        }
        CommonDialogbox.show(
          context: context,
          title: 'Exit',
          message: 'Are you sure you want to Exit?',
          positiveText: 'Exit',
          negativeText: 'Cancel',
          onNegative: () {
            // Close the dialog
            Navigator.of(context).pop();
          },
          icon: Icons.exit_to_app_rounded,
          iconColor: AppColors.primary,
          onPositive: () {
            SystemNavigator.pop();
          },
        );
      },
      child: Scaffold(
        body: Obx(
          () => IndexedStack(
            index: controller.selectedIndex.value,
            children: const [HomeView(), CartView(), ProfileView()],
          ),
        ),
        bottomNavigationBar: Obx(
          () => Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, -5),
                ),
              ],
            ),
            child: BottomNavigationBar(
              currentIndex: controller.selectedIndex.value,
              onTap: controller.updateIndex,
              backgroundColor: Colors.white,
              selectedItemColor: AppColors.primary,
              unselectedItemColor: AppColors.textSecondary,
              selectedLabelStyle: Styles.txt12W600,
              unselectedLabelStyle: Styles.txt12W400,
              type: BottomNavigationBarType.fixed,
              elevation: 0,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  activeIcon: Icon(Icons.home),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined),
                  activeIcon: Icon(Icons.shopping_cart),
                  label: "Cart",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline),
                  activeIcon: Icon(Icons.person),
                  label: "Profile",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
