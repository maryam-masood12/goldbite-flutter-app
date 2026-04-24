import 'package:flutter/material.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
       Column(
        children: [
            Container(
            width: 390,
            height: 486,
            decoration: BoxDecoration(
              
          
              image: DecorationImage(
                image: AssetImage("assets/images/Hero_image.png"),
              fit: BoxFit.cover,
              ),
              
            
          ),

         
            ),

                  Stack(
                    children: [

                       Container(
                         width: 390,
                         height: 397,
                        
                         decoration: const BoxDecoration(
                           color: Color(0xFF131313),
                         
                         ),
                         child:
                          Column(
                           children: [
                          
                            Container(
                              width: 350,
                              height: 172,
                          
                               decoration: BoxDecoration(
                                         
                                       
                                         image: DecorationImage(
                           image: AssetImage("assets/images/Margin_1.png"),
                                         fit: BoxFit.cover,
                                         ),
                          
                                         
                                       
                                       ),
                            ),

                            SizedBox(height: 60,),
                      
                             Container(
                              width: 350,
                              height: 64,
                                            
                               decoration: BoxDecoration(
                                         
                                       
                                         image: DecorationImage(
                                             image: AssetImage("assets/images/button_start.png"),
                                         fit: BoxFit.cover,
                                         ),
                                            
                                       
                                       ),
                            ),

                            SizedBox(height: 12,),

                            
                             Container(
                              width: 350,
                              height: 40,
                                            
                               decoration: BoxDecoration(
                                         
                                       
                                         image: DecorationImage(
                                             image: AssetImage("assets/images/skip_now.png"),
                                         fit: BoxFit.cover,
                                         ),
                                       
                                       ),
                            ),
                           ],
                                         ),
                       ),
                  
                             Positioned(
                                top: 230,
                                left: 0,
                                right: 200,
                                child: Image.asset(
                                      "assets/images/Background_blur.png", 
                                  fit: BoxFit.cover,
                                        ),
                                             ),
                                          ],
                                
                                    ),
                                     ],
                               ),
     
                                 
      

                               );}}

                             