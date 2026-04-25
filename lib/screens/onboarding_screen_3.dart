import 'package:flutter/material.dart';

class OnboardingScreen3 extends StatelessWidget {
  const OnboardingScreen3({super.key});

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
                  height: 486,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/biker.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Container(
                        width: 85,
                        height: 24,
                        alignment: Alignment.center,
                        child: Text(
                          'GOLDBITE'.toUpperCase(),
                          style: const TextStyle(
                            fontFamily: 'Space Grotesk',
                            fontWeight: FontWeight.w900,
                            fontSize: 17,
                            letterSpacing: -0.8,
                            color: Color(0xFFF5A623),
                          ),
                        ),
                      ),
                    ),

                    const Spacer(),

                    Padding(
                      padding: const EdgeInsets.only(right: 20, top: 20),
                      child: Text(
                        'SKIP',
                        style: const TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 15,
                          color: Color.fromARGB(255, 125, 125, 123),
                        ),
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 470),
                  child: Container(
                    width: double.infinity,
                    height: 430,
                    padding: const EdgeInsets.only(
                      top: 40,
                      right: 20,
                      left: 20,
                    ),
                    decoration: const BoxDecoration(
                      color: Color(0xFF131313),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                    ),

                    child: Column(
                      children: [

                        Container(
                          width: 350,
                          height: 38,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/dots.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        Container(
                          width: 350,
                          height: 119,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/Narrative1.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        Container(
                          width: 350,
                          height: 104,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/button.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Container(
                            width: 350,
                            height: 114,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/row.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
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