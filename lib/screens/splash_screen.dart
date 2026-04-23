import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: 
      Stack(
        children: [
         Container(
          width: 390,
          height: 884,
           color: Color(0xFF0D0D0D),
          
        
        ),

       

         Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Container(
            width: 390,
            height: 600,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
          
              image: DecorationImage(
                image: AssetImage("assets/images/Overlay+Blur.png"),
              fit: BoxFit.cover,
              ),
              
            
          ),
          
            ),
        ),
        
          Padding(
            padding: const EdgeInsets.only(top: 330,left: 70),
            child: Container(
            width: 237.86,
            height: 234.8,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/brand_logo_1.png"),
                  fit: BoxFit.contain,
                ),
              
            )
            
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.only(left: 63,top: 755),
            child: Container(
            width: 256,
            height: 33,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/divider.png"),
                  fit: BoxFit.contain,
                ),
              
            )
            
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 63,top: 755),
            child: Container(
            width: 74.66,
            height: 33,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Loading_Bar.png"),
                  fit: BoxFit.contain,
                ),
              
            )
            
            ),
          ),

          

          Padding(
            padding: const EdgeInsets.only(left: 64,top: 790),
            child: Container(
            width: 224,
            height: 19,
           
           child: Text(
            "INITIALIZING...",
            style: const TextStyle(
              fontSize: 12,
              color: Color(0xFF404040),
            ),
          ),
          ),
          
          ),
          
          Padding(
            padding: const EdgeInsets.only(left: 270,top: 790),
            child: Container(
            width: 224,
            height: 19,
           
           child: Text(
            "EST.2S",
            style: const TextStyle(
              fontSize: 12,
              color:  Color(0xFFF5A623),
            ),
          ),
          ),
          
          ),
        ]
      ),

    );}}