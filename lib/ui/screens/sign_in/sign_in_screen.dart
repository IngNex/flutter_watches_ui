import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 241, 238),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            child: Container(
              height: 350,
              width: 100,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 2,
                    blurRadius: 8,
                    color: Colors.grey,
                    offset: Offset(0, 3),
                  ),
                ],
                color: Color.fromARGB(225, 247, 97, 96),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 500,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 2,
                    blurRadius: 8,
                    color: Colors.grey,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.3,
            child: const CircleAvatar(
              radius: 100,
              backgroundColor: Colors.grey,
              child: Image(
                image: AssetImage('assets/intro.png'),
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.56,
            child: const Text(
              'All your Favorite',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: size.height * 0.6,
            child: const Text(
              'Watch',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: size.height * 0.7,
            left: 20,
            right: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(36),
              ),
              child: const Text(
                'Sing in witch Facebook',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.8,
            left: 20,
            right: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(36),
              ),
              child: const Text(
                'Sign In',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.88,
            child: const Row(
              children: [
                Text('Or start to'),
                SizedBox(width: 5),
                Text(
                  'Search New',
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
