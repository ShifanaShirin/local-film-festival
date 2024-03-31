import 'package:flutter/material.dart';
import 'package:local_film_festival/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

    _navigatetohome() async {
    await Future.delayed(const Duration(seconds: 5), () {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) =>const LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return Scaffold(
   // backgroundColor:purpleColor,
      body: Container(
        decoration: const BoxDecoration(
        image: DecorationImage(image:AssetImage('assets/splash.png'),fit: BoxFit.cover)
        ),
        
      ),
    );
  }
}