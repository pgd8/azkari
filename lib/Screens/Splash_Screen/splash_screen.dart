import 'package:azkari_project/My_App/my_Theme.dart';
import 'package:azkari_project/Screens/Home_Screen/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "SplashScreen";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    routeToFirstScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyTheme.primaryColor,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/AppLogo.png"),
              const Text(
                "Azkari",
                style: TextStyle(
                  color: MyTheme.secondaryColor,
                  fontFamily: "Cairo",
                  fontSize: 30,
                ),
              ),
              const Text(
                "Developed by \n Abdelrahman Hamdi",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 9, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void routeToFirstScreen() {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ));
    });
  }
}
