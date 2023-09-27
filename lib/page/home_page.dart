import 'package:flutter/material.dart';
import 'package:shoes_app/widget/banner_promo.dart';
import 'package:shoes_app/widget/categorie_list.dart';
import 'package:shoes_app/widget/product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
                child: SizedBox(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Hi, Nasikhun!',
                            style: TextStyle(
                              color: Color(0xff32323C),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          InkWell(
                            onTap: () {},
                            child: const Icon(Icons.notifications_outlined),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          fillColor: const Color(0xffefefef),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Search...',
                          hintStyle: const TextStyle(
                            color: Color(0xffa6a6a6),
                          ),
                          prefixIcon: const Icon(Icons.search),
                        ),
                      ),
                      const SizedBox(height: 15),
                      const BannerPromo(),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CategorieList(),
              const SizedBox(
                height: 25,
              ),
              const ProductCard(),
            ],
          ),
        ),
      ),
    );
  }
}
