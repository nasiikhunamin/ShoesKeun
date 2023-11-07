import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';
import 'package:shoes_app/page/main_page.dart';
import 'package:shoes_app/widget/custom_button.dart';

class DetailProduct extends StatelessWidget {
  final Map item;
  const DetailProduct({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2.1,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color(0xff000000),
                  image: DecorationImage(
                    image: AssetImage('assets/bgDetailProduct.png'),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(80),
                  child: Image.asset(
                    item['image'],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 45, horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const MainPage();
                            },
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_back_outlined,
                        color: Color(0xffffffff),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      color: const Color(0xffffffff),
                      icon: const Icon(Icons.shopping_cart_outlined),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 1 / 2,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color(0xffDEE5E5),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item['name'],
                            style: const TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff3A3E3E),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            item['tagline'],
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Color(0xff3A3E3E),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                          color: Color(0xff3A3E3E),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_outline,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            RatingBarIndicator(
                              rating: item['rating'],
                              itemBuilder: (context, index) => const Icon(
                                Icons.star,
                                color: Color(0xffffc207),
                              ),
                              itemCount: 5,
                              itemSize: 20,
                              direction: Axis.horizontal,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              item['rating'].toString(),
                              style: const TextStyle(
                                color: Color(0xff3A3E3E),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        NumberFormat.currency(locale: 'id_ID', symbol: 'Rp')
                            .format(item['price']),
                        style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xff3A3E3E),
                            fontSize: 17),
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Description',
                          style: TextStyle(
                              color: Color(0xff3A3E3E),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          item['description'],
                          style: const TextStyle(
                            color: Color(0xff3A3E3E),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    onTap: () {},
                    title: 'Buy Now',
                    color: const Color(0xff3A3E3E),
                    titleColor: const Color(0xffDEE5E5),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
