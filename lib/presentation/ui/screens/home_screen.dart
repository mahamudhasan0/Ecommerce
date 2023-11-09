import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/presentation/ui/utility/app_color.dart';
import 'package:ecommerce/presentation/ui/widgets/circular_icon_button.dart';
import 'package:ecommerce/presentation/ui/widgets/home_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            SvgPicture.asset('assets/images/logo_nav.svg'),
            const Spacer(),
            CircularIconButton(
              icon: Icons.person_2_outlined,
              onTap: () {},
            ),
            const SizedBox(
              width: 8,
            ),
            CircularIconButton(
              icon: Icons.call_rounded,
              onTap: () {},
            ),
            const SizedBox(
              width: 8,
            ),
            CircularIconButton(
              icon: Icons.notifications_active_outlined,
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search...',
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder:
                      const OutlineInputBorder(borderSide: BorderSide.none),
                  enabledBorder:
                      const OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
             const HomeSlider(),
            ],
          ),
        ),
      ),
    );
  }
}
