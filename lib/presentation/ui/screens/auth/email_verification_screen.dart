import 'package:ecommerce/presentation/ui/screens/auth/otp_verification_screen.dart';
import 'package:ecommerce/presentation/ui/utility/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              Center(
                  child: SvgPicture.asset(
                ImageAssets.craftyBayLogoSVG,
                height: 100,
              )),
              const SizedBox(
                height: 10,
              ),
              Text('Welcome Back',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontSize: 24)),
              const SizedBox(
                height: 16,
              ),
              Text('Enter Your Email Address',
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge
                      ?.copyWith(fontSize: 16, color: Colors.grey)),
              const SizedBox(height: 8,),
              TextFormField(),
              const SizedBox(height: 8,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(const OTPVerificationScreen());
                    },
                    child: const Text(
                      'Next',
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
