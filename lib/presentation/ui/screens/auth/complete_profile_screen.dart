import 'package:ecommerce/presentation/ui/utility/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() =>
      _CompleteProfileScreen();
}

class _CompleteProfileScreen extends State<CompleteProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Center(
                    child: SvgPicture.asset(
                      ImageAssets.craftyBayLogoSVG,
                      height: 100,
                    )),
                const SizedBox(
                  height: 10,
                ),
                Text('Complete Profile Screen',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontSize: 24, fontWeight: FontWeight.bold),),
                const SizedBox(
                  height: 16,
                ),
                Text('Get started with us with your details',
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge
                        ?.copyWith(fontSize: 16, color: Colors.grey)),
                const SizedBox(height: 8,),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'First Name',
                  ),
                ),
                const SizedBox(height: 12,),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Last Name',
                  ),
                ),
                const SizedBox(height: 12,),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Mobile',
                  ),
                ),
                const SizedBox(height: 12,),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'City',
                  ),
                ),
                const SizedBox(height: 12,),
                TextFormField(
                  maxLines: 6,
                  decoration: const InputDecoration(
                    hintText: 'Shipping Address',
                    contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                  ),
                ),
                const SizedBox(height: 8,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                      },
                      child: const Text(
                        'Next',
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
