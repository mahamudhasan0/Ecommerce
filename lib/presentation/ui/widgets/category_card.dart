import 'package:ecommerce/presentation/ui/utility/app_color.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: AppColor.primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8)),
            child: const Icon(
              Icons.shop,
              size: 32,
              color: AppColor.primaryColor,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Electronics',
            style: TextStyle(
                fontSize: 15, color: AppColor.primaryColor, letterSpacing: 0.4),
          ),
        ],
      ),
    );
  }
}
