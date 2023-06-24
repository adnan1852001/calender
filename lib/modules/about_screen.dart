import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
            systemNavigationBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.dark,
            statusBarColor: Color(0xffED1B35)),
        backgroundColor: const Color(0xffED1B35),
        title: Text('Informations'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 50.0,
              ),
              Image.asset(
                'images/images.jpeg',
                width: 150,
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'Islamic University of Gaza',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18.0,
                ),
              ),
              const Text(
                'Computer Engineering Department',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'Discrete mathematics final project',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Color(0xffED1B35),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Text(
                'Under the supervision of the engineer:',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Text(
                'Mohammed',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0,
                  color: Color(0xffED1B35),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Text(
                'Made by the student:',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Text(
                'Adnan S.A.khella',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0,
                  color: Color(0xffED1B35),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Text(
                'University ID:',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Text(
                '*********',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0,
                  color: Color(0xffED1B35),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
