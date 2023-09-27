import 'package:flutter/material.dart';

class BannerPromo extends StatelessWidget {
  const BannerPromo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffefefef),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 15,
              right: 15,
              bottom: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '70% Discount',
                  style: TextStyle(
                    color: Color(0xff32323C),
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  'on your first purchase',
                  style: TextStyle(
                    color: Color(0xff32323C),
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 10,
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xff32323C),
                    ),
                  ),
                  child: const Text(
                    'Shop Now',
                    style: TextStyle(color: Color(0xffefefef)),
                  ),
                )
              ],
            ),
          ),
          Image.asset(
            'assets/nikeFree5.png',
            width: 150,
          ),
        ],
      ),
    );
  }
}
