import 'dart:async';

import 'package:ecommerce/presentation/ui/auth/complete_profile_screen.dart';
import 'package:ecommerce/presentation/ui/utility/app_color.dart';
import 'package:ecommerce/presentation/ui/utility/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({super.key});

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  int _remainingTime = 120;
  late Timer _timer;

  @override
  void initState() {
    super.initState();

    // Start the countdown when the screen is initialized
    _startTimer();
  }

  void _startTimer() {
    const oneSecond = Duration(seconds: 1);
    _timer = Timer.periodic(oneSecond, (timer) {
      if (_remainingTime == 0) {
        // Timer has expired, you can handle this event here.
        timer.cancel();
      } else {
        setState(() {
          _remainingTime--;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
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
                Text('Enter OTP Code',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontSize: 24, fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 16,
                ),
                Text('A 4 digit OTP Code has been sent',
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge
                        ?.copyWith(fontSize: 16, color: Colors.grey)),
                const SizedBox(
                  height: 8,
                ),
                PinCodeTextField(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  length: 4,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  keyboardType: TextInputType.number,
                  pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 40,
                      activeFillColor: Colors.white,
                      inactiveFillColor: Colors.white,
                      selectedFillColor: Colors.white,
                      activeColor: AppColor.primaryColor,
                      inactiveColor: AppColor.primaryColor,
                      selectedColor: Colors.green),
                  animationDuration: const Duration(milliseconds: 300),
                  enableActiveFill: true,
                  onCompleted: (v) {},
                  onChanged: (value) {},
                  beforeTextPaste: (text) {
                    return true;
                  },
                  appContext: context,
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.offAll(
                        const CompleteProfileScreen(),
                      );
                    },
                    child: const Text(
                      'Next',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Colors.grey),
                    children: [
                      const TextSpan(text: 'This code will expire in '),
                      // TextSpan(
                      //   text: '120s',
                      //   style: TextStyle(
                      //       color: AppColor.primaryColor,
                      //       fontWeight: FontWeight.bold),
                      // ),
                      TextSpan(
                        text: '$_remainingTime' + 's',
                        style: const TextStyle(
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(foregroundColor: Colors.grey),
                  child: const Text('Resend Code'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
