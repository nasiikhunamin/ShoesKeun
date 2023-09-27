import 'package:flutter/material.dart';
import 'package:shoes_app/page/signup_page.dart';
import 'package:shoes_app/page/main_page.dart';
import 'package:shoes_app/widget/custom_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // checkbox
  bool _isChecked = false;
  // texfield
  bool _isSecure = false;
  @override
  //fungsi password visible
  void initState() {
    super.initState();
    _isSecure = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1),
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff32323C),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Hello, Welcome back to yor account',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0xffBDBDBD),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      cursorColor: const Color(0xff32323C),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        labelText: "Username",
                        labelStyle: const TextStyle(
                          color: Color(0xffBDBDBD),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            color: Color(0xff32323C),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            color: Color(0xffBDBDBD),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextField(
                      obscureText: _isSecure,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        labelText: "Password",
                        labelStyle: const TextStyle(
                          color: Color(0xffBDBDBD),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            color: Color(0xff32323C),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            color: Color(0xffBDBDBD),
                          ),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(_isSecure
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined),
                          onPressed: () {
                            setState(
                              () {
                                _isSecure = !_isSecure;
                              },
                            );
                          },
                        ),
                      ),
                      cursorColor: const Color(0xff32323C),
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          child: Row(
                            children: [
                              Checkbox(
                                activeColor: const Color(0xff32323C),
                                value: _isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    _isChecked = value!;
                                  });
                                },
                              ),
                              const Text('Remember me')
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Color(0xff32323C),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                CustomButton(
                  titleColor: const Color(0xffffffff),
                  color: const Color(0xff32323C),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const MainPage();
                        },
                      ),
                    );
                  },
                  title: 'Login',
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t have a account?',
                        style: TextStyle(
                            color: Color.fromARGB(237, 146, 143, 143),
                            fontWeight: FontWeight.w600),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                                  EdgeInsets.zero),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const SignUpPage();
                              },
                            ),
                          );
                        },
                        child: const Text(
                          'SignUp',
                          style: TextStyle(color: Color(0xff32323C)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
