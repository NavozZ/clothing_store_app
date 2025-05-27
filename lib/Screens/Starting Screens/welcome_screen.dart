import 'package:clothing_store_app/Screens/Starting%20Screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Images Row with padding
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // LEFT side (one tall oval image)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.asset(
                      'assets/images/pexels-frendsmans-1926769.jpg',
                      width: 160,
                      height: 350,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 20),
                  // RIGHT side (two stacked circular images)
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipOval(
                        child: Image.asset(
                          'assets/images/images.jpeg',
                          width: 100,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 20),
                      ClipOval(
                        child: Image.asset(
                          'assets/images/7-Pieces-You-Need-to-Embrace-the-1970s-Fashion-Trend-woman-in-trendy-suede-skirt.jpg',
                          width: 120,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Mixed color text
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text.rich(
                TextSpan(
                  text: 'The ',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: 'Fashion App',
                      style: TextStyle(
                        color: Colors.brown,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(text: ' That Makes You Look Your Best'),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 8),
            const Text(
              'Your style journey starts here!',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),

            const SizedBox(height: 20),

            // Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OnboardingScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
                padding: const EdgeInsets.symmetric(
                  horizontal: 100,
                  vertical: 10,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                "Let's Get Started",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),

            const SizedBox(height: 16),

            // Sign In link
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account? ",
                  style: TextStyle(fontSize: 14, color: Colors.black87),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/signin'); // adjust if needed
                  },
                  child: const Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
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
