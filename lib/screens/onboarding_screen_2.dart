import 'package:flutter/material.dart';
import 'onboarding_screen_3.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            Stack(
              children: [

                Container(
                  width: double.infinity,
                  height: 366.42,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/hero_2.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Container(
                  width: double.infinity,
                  height: 54,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/skip.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 365),
                  child: Container(
                    width: double.infinity,
                    height: 517.58,
                    color: const Color(0xFF131313),

                    child: Column(
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Container(
                            width: 350,
                            height: 324.99,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/content_3.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const OnboardingScreen3(),
                              ),
                            );
                          },
                          child: Container(
                            width: 350,
                            height: 64,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/button_2.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 10),

                        Row(
                          children: [

                            Padding(
                              padding: const EdgeInsets.only(left: 80, top: 6),
                              child: Container(
                                width: 25,
                                height: 20,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/icon_1.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(width: 5),

                            const Text(
                              'PREMIUM DELIVERY SERVICE',
                              style: TextStyle(
                                fontFamily: 'Be Vietnam Pro',
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                letterSpacing: 1,
                                color: Color.fromARGB(102, 223, 201, 177),
                              ),
                            ),
                          ],
                        ),
                      ],
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