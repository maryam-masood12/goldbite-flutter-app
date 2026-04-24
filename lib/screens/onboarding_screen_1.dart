import 'package:flutter/material.dart';
import 'onboarding_screen_2.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 486,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Hero_image.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 397,
                  decoration: const BoxDecoration(
                    color: Color(0xFF131313),
                  ),
                  child: Column(
                    children: [

                      Container(
                        width: 350,
                        height: 172,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/Margin_1.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      const SizedBox(height: 60),

                    
                      GestureDetector(
                        
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const OnboardingScreen2(),
                            ),
                          );
                        },
                        child: Container(
                          width: 350,
                          height: 64,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/button_start.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 12),

                    
                      GestureDetector(
                        
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const OnboardingScreen2(),
                            ),
                          );
                        },
                        child: Container(
                          width: 350,
                          height: 40,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/skip_now.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
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