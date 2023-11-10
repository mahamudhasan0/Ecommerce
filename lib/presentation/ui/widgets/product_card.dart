import 'package:ecommerce/presentation/ui/utility/app_color.dart';
import 'package:ecommerce/presentation/ui/utility/image_assets.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: AppColor.primaryColor.withOpacity(0.1),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: SizedBox(
        width: 130,
        child: Column(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: AppColor.primaryColor.withOpacity(0.1),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                image: const DecorationImage(
                  image: AssetImage(ImageAssets.productCardImage),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    'Nike shoe AK5809743',
                    maxLines: 1,
                    style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.blueGrey),
                  ),
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '\$90',
                  style: TextStyle(
                      fontSize: 13,
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.w500),
                ),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      size: 15,
                      color: Colors.amber,
                    ),
                    Text(
                      '4.5',
                      style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.blueGrey),
                    )
                  ],
                ),
                Card(
                  color: AppColor.primaryColor,
                  child: Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Icon(
                      Icons.favorite_border,
                      size: 12,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
