import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'PA Multi',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF6BF6C3),
                Color(0xFF3D79F8),
              ],
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 100, bottom: 40, left: 40, right: 40),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                UnconstrainedBox(
                  child: SvgPicture.asset('assets/image-1.svg'),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Learn Graphic and UI/UX designing in Hindi for free with live projects.',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 48,
                ),
                const CustomTextField(
                  bobob: "Email Address",
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: CustomTextField(
                    bobob: "Password",
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(double.infinity, 50)),
                  child: const Center(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF3F82E6),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset('assets/gmail.svg'),
                    SvgPicture.asset('assets/facebook.svg'),
                    SvgPicture.asset('assets/twitter.svg'),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                RichText(
                  text: const TextSpan(
                    text: 'Don’t have an account? ',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                        text: 'Register now',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String bobob;
  const CustomTextField({
    super.key,
    required this.bobob,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFF6CC5DE),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.071),
              offset: const Offset(0, 3),
              blurRadius: 12),
        ],
        borderRadius: BorderRadius.circular(1000),
      ),
      child: TextField(
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: bobob,
          hintStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      ),
    );
  }
}