import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shoes_app/model/model.dart';
import 'package:shoes_app/page/detail_product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 2 / 3,
      ),
      itemCount: shoesProduct.length,
      padding: const EdgeInsetsDirectional.symmetric(
        vertical: 10,
        horizontal: 15,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        Map<String, dynamic> item = shoesProduct[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return DetailProduct(item: item);
                    },
                  ),
                );
              },
              child: Container(
                height: 170,
                decoration: BoxDecoration(
                  color: const Color(0xffefefef),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      item['image'],
                      height: 100,
                      width: 500,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            Text(
              NumberFormat.currency(locale: 'id_ID', symbol: 'Rp')
                  .format(item['price']),
              style: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item['name'],
                  style: const TextStyle(
                    color: Color(0xffa6a6a6),
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                    color: Color(0xffefefef),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_outline,
                    ),
                  ),
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
