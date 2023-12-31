import 'package:ecommerce/presentation/ui/screens/category_list_screen.dart';
import 'package:ecommerce/presentation/ui/screens/home_screen.dart';
import 'package:ecommerce/presentation/ui/screens/wish_list_screen.dart';
import 'package:ecommerce/presentation/ui/utility/app_color.dart';
import 'package:flutter/material.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const CategoryListScreen(),
    const HomeScreen(),
    const WishListScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index){
          _selectedIndex = index;
          if(mounted){
            setState(() {
            });
          }
        } ,
        selectedItemColor: AppColor.primaryColor,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard),label: 'Categories' ),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: 'Wishlist')
        ],
      ),
    );
  }
}
