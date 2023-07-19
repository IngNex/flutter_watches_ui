import 'package:flutter/material.dart';
import 'package:flutter_watches_ui/ui/screens/sign_in/sign_in_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 800),
          pageBuilder: (context, animation, _) {
            return FadeTransition(opacity: animation, child: SignInScreen());
          },
        ),
      ),
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: size.height * 0.35,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  TweenAnimationBuilder<double>(
                    duration: const Duration(milliseconds: 900),
                    tween: Tween(begin: 1.0, end: 0.0),
                    curve: Curves.easeInOutBack,
                    builder: (context, value, child) {
                      return Transform.translate(
                        offset: Offset(0, -200 * value),
                        child: Container(
                          height: 150,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 24, 241, 238),
                            shape: BoxShape.circle,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Image(
                              color: Colors.black,
                              image: AssetImage('assets/logo.png'),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TweenAnimationBuilder<double>(
                    duration: const Duration(milliseconds: 700),
                    tween: Tween(begin: 1.0, end: 0.0),
                    curve: Curves.easeInOutBack,
                    builder: (context, value, child) {
                      return Transform.translate(
                        offset: Offset(0, -200 * value),
                        child: const Text(
                          "WATCH'S",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            const Positioned(
              bottom: 15,
              left: 0,
              right: 0,
              child: Text(
                'byMaicolDev',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
