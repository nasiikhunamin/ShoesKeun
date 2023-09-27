import 'package:flutter/material.dart';
import 'package:shoes_app/model/model.dart';

class CategorieList extends StatefulWidget {
  const CategorieList({
    super.key,
  });

  @override
  State<CategorieList> createState() => _CategorieListState();
}

class _CategorieListState extends State<CategorieList> {
  ///variable index categories list
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(categoriesProducts.length, (index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8, left: 20),
            child: InkWell(
              onTap: () {
                setState(() {
                  _currentIndex = index;
                });
              },
              child: Text(
                categoriesProducts[index],
                style: TextStyle(
                  color: _currentIndex == index
                      ? const Color(0xff32323C)
                      : const Color(0xffa6a6a6),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
