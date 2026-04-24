import 'package:flutter/material.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
       Column(
         children: [
           Stack(
            children: [
                  Container(
                  width: 390,
                  height: 366.42,
                  decoration: BoxDecoration(
                    
                
                    image: DecorationImage(
                      image: AssetImage("assets/images/hero_2.png"),
                    fit: BoxFit.cover,
                    ),
                    
                  
                ),
             
               
                  ),
                 
                   
                     Container(
                                   width: 390,
                                   height: 54,
                                   decoration: BoxDecoration(
                                     
                                     image: DecorationImage(
                      image: AssetImage("assets/images/skip.png"),
                                     fit: BoxFit.cover,
                                     ),
                                     
                                   
                                 ),
                              
                                
                                   ),

                                   

                                     Padding(
                                       padding: const EdgeInsets.only(top: 365),
                                       child: Container(
                                        width: 390,
                                        height: 517.58,
                                       color: Color(0xFF131313),

                                       child:
                                        Column(
                                       children: [  
                                                Padding(
                                           padding: const EdgeInsets.only(top :40),
                                                child: Container(
                                              width: 350,
                                              height: 324.99,
                                    
                                          decoration: BoxDecoration(
                                 
                               
                                 image: DecorationImage(
                                     image: AssetImage("assets/images/content_3.png"),
                                 fit: BoxFit.cover,
                                 ),
                                    
                                 
                               
                               ),
                    ),
                  ),

              

                   Container(
                    width: 350,
                    height: 64,
                                  
                     decoration: BoxDecoration(
                               
                             
                               image: DecorationImage(
                                   image: AssetImage("assets/images/button_2.png"),
                               fit: BoxFit.cover,
                               ),
                                  
                               
                             
                             ),
                  ),

                  

                   Padding(
                     padding: const EdgeInsets.only(top: 10),
                     child: Row(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only (left: 80, top :6),
                           child: Container(
                            width: 25,
                            height: 20,
                                          
                             decoration: BoxDecoration(
                                       
                                     
                                       image: DecorationImage(
                                           image: AssetImage("assets/images/icon_1.png"),
                                       fit: BoxFit.cover,
                                       ),
                                       
                                          
                                       
                                     
                                     ),
                           
                                     
                                             ),
                         ),

                                              Padding(
                                                padding: const EdgeInsets.only(left: 3,top: 10),
                                                child: Container(
                                                width: 200,
                                                height: 22,
                                                                                        
                                                 child:
                                                  Text(
                                                  'PREMIUM DELIVERY SERVICE',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontFamily: 'Be Vietnam Pro',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12,
                                                    letterSpacing: 1,
                                                    height: 1.5, 
                                                    color: Color.fromARGB(102, 223, 201, 177), 
                                                  ),
                                                )
                                                                         
                                                                                   
                                                                                           ),
                                              ),
                       ],
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

                               );
                               }}