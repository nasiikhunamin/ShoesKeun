import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoes_app/page/login_page.dart';
import 'package:shoes_app/widget/custom_button.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: SvgPicture.asset('assets/shoeskeunLogo.svg'),
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(17),
                    topRight: Radius.circular(17),
                  ),
                  color: Color(0xffffffff),
                ),
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Welcome to ShoesKeun',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff32323C),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Discover your every step and story with ShoesKeun',
                            style: TextStyle(
                                color: Color(0xffa6a6a6), fontSize: 19),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      CustomButton(
                        titleColor: const Color(0xffffffff),
                        color: const Color(0xff32323C),
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const LoginPage();
                              },
                            ),
                          );
                        },
                        title: 'Get Started',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
