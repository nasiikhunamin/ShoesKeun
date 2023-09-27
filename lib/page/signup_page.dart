import 'package:flutter/material.dart';
import 'package:shoes_app/page/login_page.dart';
import 'package:shoes_app/page/main_page.dart';
import 'package:shoes_app/widget/custom_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1),
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'SignUp',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff32323C)),
                    ),
                    const Text(
                      'Join us on an exciting journey by creating your account',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0xffBDBDBD),
                      ),
                    ),
                    const SizedBox(height: 10),
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
                      keyboardType: TextInputType.name,
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      cursorColor: const Color(0xff32323C),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        labelText: "Email",
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
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      cursorColor: const Color(0xff32323C),
                      obscureText: _isSecure,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        labelText: "Enter your password",
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
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          child: Row(
                            children: [
                              Checkbox(
                                activeColor: const Color(0xff32323C),
                                visualDensity: VisualDensity.compact,
                                value: _isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    _isChecked = value!;
                                  });
                                },
                              ),
                              const Text(
                                'I accepted',
                                style: TextStyle(
                                    color: Color(0xffBDBDBD),
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              TextButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all<
                                      EdgeInsetsGeometry>(EdgeInsets.zero),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Terms & Privacy Police',
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
                        'Already have a account?',
                        style: TextStyle(
                            color: Color(0xffBDBDBD),
                            fontWeight: FontWeight.w600),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const LoginPage();
                              },
                            ),
                          );
                        },
                        child: const Text(
                          'SignIn',
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
