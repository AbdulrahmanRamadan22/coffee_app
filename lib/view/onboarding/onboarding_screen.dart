import 'package:coffee_app/view/home/home_layout.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECE0D1), // Light beige background color

      //all padding body left,right,top,bottom  38px
      body: Padding(
        padding: const EdgeInsets.all(38),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Coffee splash image
            Image.asset(
              width: double.infinity,
              'assets/images/onboarding.png', // image URL asset/images
            ),
            const SizedBox(height: 57),
            // Title text
            const Text(
              'Stay Focused',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xff38220f),
              ),
            ),
            const SizedBox(height: 20),
            // Description text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                ' Get the cup filled of your choice to stay focused and awake. Diffrent type of coffee menu, hot lottee cappucino',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  height: 1.6,
                  color: Colors.grey[600],
                ),
              ),
            ),
            const SizedBox(height: 80),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff967259),
                fixedSize: const Size(160, 60), // width,height
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeLayout(),
                    ),
                    (route) => false);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Dive In',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.arrow_forward)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
