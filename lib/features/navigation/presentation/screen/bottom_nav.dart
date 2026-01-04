import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../home/presentation/screen/home.dart';
import '../../controller/nav_controller.dart';

class MainBottomNavScreen extends StatelessWidget {
  MainBottomNavScreen({super.key, required int index});

  final NavigationController controller = Get.find<NavigationController>();

  final List<Widget> _screens = const [
    HomeScreen(),
    Center(child: Text("Categories")),
    Center(child: Text("Wishlist")),
    Center(child: Text("Cart")),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Scaffold(
        body: _screens[controller.currentSelectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.currentSelectedIndex.value,
          onTap: controller.changeScreen,
          selectedItemColor: const Color(0xFF07ADAE),
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          elevation: 4,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'Wishlist',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
          ],
        ),
      ),
    );
  }
}
