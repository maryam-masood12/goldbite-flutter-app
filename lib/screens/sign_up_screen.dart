import 'package:flutter/material.dart';
import 'sign_up_screen.dart';

class SignUpScreen extends StatefulWidget {
  
  const SignUpScreen({super.key});

   @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

  class _SignUpScreenState extends State<SignUpScreen> {

  bool isobsecure = true;
   bool isobsecure_1 = true;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              width: double.infinity,
              height: 65,
              color:  Color(0xFF0A0A0A),
              child: Row(

                children: [

                  Padding(
                    padding: const EdgeInsets.only(left: 18,bottom: 7),
                    child: Container(
                      width: 16,
                      height: 16,
                      child: Icon(Icons.arrow_back,color: Color(0xFFF59E0B),),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: SizedBox(
                            width: 129,
                            height: 32,
                            child: Image.asset(
                              "assets/images/g_text.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                  ),

       Padding(
         padding: const EdgeInsets.only(left: 65),
         child: SizedBox(
          width: 20,
          height: 20,
          child: Image.asset(
            "assets/images/question.png",
            fit: BoxFit.contain,
          ),
               ),
       ),
                ],
              ),
            ),

           Container(
  width: double.infinity,
  height: 1062.39,
  decoration: BoxDecoration(
    color: Color(0xFF0A0A0A),
    border: Border.all(
      color: const Color.fromARGB(255, 70, 70, 70),
      width: 0.8,
    ),
  ),
  child:
   Column(
    children: [
   
      Stack(
        children: [
   
            Padding(
              padding: const EdgeInsets.only(right: 120,),
              child: Container(
                      width: 390,
                      height: 700,
                      decoration:  BoxDecoration(
                     color: Color.fromARGB(51, 147, 120, 75).withOpacity(0.1),
                       image: DecorationImage(
                      image: AssetImage("assets/images/blur_frame.png"),
                      fit: BoxFit.cover,
                    ),

                  
                    ),
                 
                    ),
            ),

                Padding(
              padding: const EdgeInsets.only(right: 120,top: 153),
              child: Container(
                      width: double.infinity,
                      height: 400,
                      decoration:  BoxDecoration(
                     color:  Color(0xFF0A0A0A).withOpacity(0.6),
                   

                  
                    ),
                 
                    ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 120,top: 235),
              child: Container(
                      width: double.infinity,
                      height: 700,
                      decoration:  BoxDecoration(
                     color:  Color(0xFF0A0A0A),
                   

                  
                    ),
                 
                    ),
            ),
          
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 15),
            child: Container(
            width: 350,
            height: 138.69,
             decoration:  BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/heading_sec.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
            
               
            
                    ),
          ),

            Padding(
              padding: const EdgeInsets.only(top: 195,left: 15),
              child: Container(
                width: 342,
                height: 14,
                alignment: Alignment.centerLeft,
                child: Text(
                  "FULL NAME",
                  style: TextStyle(
                    fontFamily: 'BeVietnamPro',
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.4,
                    height: 1, 
                   color: Color(0xFF737373), 
                  ),
                ),
              ),
            ),

             Padding(
               padding: const EdgeInsets.only(top:220,left: 13),
               child: Container(
                width: 350,
               
               
                child: TextField(
                  style: TextStyle(
               color: Color.fromARGB(255, 94, 91, 91),
                     ),
                  
                  
                  decoration: InputDecoration(
                      isDense: true, 
      contentPadding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 10,
         ),

                    filled: true,
        fillColor: Color.fromARGB(255, 36, 35, 35),
        
        
        
                  
                   
                    hintText: "John Doe",
                    hintStyle: TextStyle(
      color: const Color.fromARGB(255, 94, 91, 91),
       ),
               
                   
                          enabledBorder :OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        
                        borderSide:const BorderSide(
                          color: Color.fromARGB(255, 53, 53, 53),
                       
                          width: 0.68,
                          style: BorderStyle.solid,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                        gapPadding:4.0,
                  ),

                   focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: Color.fromARGB(255, 158, 118, 50), 
        width: 2,
      ),
    ),
                        ),),),
             ),

              Padding(
              padding: const EdgeInsets.only(top: 293,left: 15),
              child: Container(
                width: 342,
                height: 14,
                alignment: Alignment.centerLeft,
                child: Text(
                  "EMAIL ADDRESS",
                  style: TextStyle(
                    fontFamily: 'BeVietnamPro',
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.4,
                    height: 1, 
                   color: Color(0xFF737373), 
                  ),
                ),
              ),
            ),

            Padding(
               padding: const EdgeInsets.only(top:318,left: 13),
               child: Container(
                width: 350,
               
               
                child: TextField(
                  style: TextStyle(
               color: Color.fromARGB(255, 94, 91, 91),
                     ),
                  
                  
                  decoration: InputDecoration(
                      isDense: true, 
      contentPadding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 10,
         ),

                    filled: true,
        fillColor: Color.fromARGB(255, 36, 35, 35),
        
        
        
                  
                   
                    hintText: "name@gmail.com",
                    hintStyle: TextStyle(
      color: const Color.fromARGB(255, 94, 91, 91),
       ),
               
                   
                          enabledBorder :OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        
                        borderSide:const BorderSide(
                          color: Color.fromARGB(255, 53, 53, 53),
                       
                          width: 0.68,
                          style: BorderStyle.solid,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                        gapPadding:4.0,
                  ),

                   focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: Color.fromARGB(255, 158, 118, 50), 
        width: 2,
      ),
    ),
                        ),),),
             ),


              Padding(
              padding: const EdgeInsets.only(top: 392,left: 15),
              child: Container(
                width: 342,
                height: 14,
                alignment: Alignment.centerLeft,
                child: Text(
                  "PASSWORD",
                  style: TextStyle(
                    fontFamily: 'BeVietnamPro',
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.4,
                    height: 1, 
                   color: Color(0xFF737373), 
                  ),
                ),
              ),
            ),

              Padding(
                
               padding: const EdgeInsets.only(top:418,left: 13),
               child: Container(
                width: 350,
               
               
                child: TextField(

                  obscureText: isobsecure,
                  style: TextStyle(
               color: Color.fromARGB(255, 94, 91, 91),
                     ),
                    
                  
                  
                  decoration: InputDecoration(
                      isDense: true, 
      contentPadding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 10,
         ),

                    filled: true,
        fillColor: Color.fromARGB(255, 36, 35, 35),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isobsecure = !isobsecure;
               
            });
          },
          icon: Icon(
            isobsecure? Icons.remove_red_eye_outlined : Icons.visibility_off_outlined,
            color: Color.fromARGB(255, 121, 120, 120),
          ),
        ),
    
                    hintText: "........",
                    hintStyle: TextStyle(
      color: const Color.fromARGB(255, 94, 91, 91),
      
       ),
               
                   
                          enabledBorder :OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        
                        borderSide:const BorderSide(
                          color: Color.fromARGB(255, 53, 53, 53),
                       
                          width: 0.68,
                          style: BorderStyle.solid,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                        gapPadding:4.0,
                  ),

                   focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: Color.fromARGB(255, 158, 118, 50), 
        width: 2,
      ),
    ),
                        ),),),
             ),


              Padding(
              padding: const EdgeInsets.only(top: 492,left: 15),
              child: Container(
                width: 342,
                height: 14,
                alignment: Alignment.centerLeft,
                child: Text(
                  "CONFIRM PASSWORD",
                  style: TextStyle(
                    fontFamily: 'BeVietnamPro',
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.4,
                    height: 1, 
                   color: Color(0xFF737373), 
                  ),
                ),
              ),
            ),

                          Padding(
                
               padding: const EdgeInsets.only(top:519,left: 13),
               child: Container(
                width: 350,
               
               
                child: TextField(

                  obscureText: isobsecure_1,
                  style: TextStyle(
               color: Color.fromARGB(255, 94, 91, 91),
                     ),
                    
                  
                  
                  decoration: InputDecoration(
                      isDense: true, 
      contentPadding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 10,
         ),

                    filled: true,
        fillColor: Color.fromARGB(255, 36, 35, 35),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isobsecure_1 = !isobsecure_1;
               
            });
          },
          icon: Icon(
            isobsecure_1? Icons.remove_red_eye_outlined : Icons.visibility_off_outlined,
            color: Color.fromARGB(255, 121, 120, 120),
          ),
        ),
    
                    hintText: "........",
                    hintStyle: TextStyle(
      color: const Color.fromARGB(255, 94, 91, 91),
      
       ),
               
                   
                          enabledBorder :OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        
                        borderSide:const BorderSide(
                          color: Color.fromARGB(255, 53, 53, 53),
                       
                          width: 0.68,
                          style: BorderStyle.solid,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                        gapPadding:4.0,
                  ),

                   focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: Color.fromARGB(255, 158, 118, 50),
        width: 2,
      ),
    ),
                        ),),),
             ),

              Padding(
              padding: const EdgeInsets.only(top: 590,left: 15),
              child: Container(
                width: 350,
                height: 41,
                child: Row(
                  children: [

                   Container(
  width: 20,
  height: 20,
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 53, 53, 53), 
    borderRadius: BorderRadius.circular(2),  
    border: Border.all(
      color: const Color.fromARGB(255, 91, 90, 90), 
      width: 0.4,
    ),
  ),
),

Padding(
  padding: const EdgeInsets.only(left: 13,top: 9),
  child: Container(
    width: 310,
    height: 35,
     decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/Label_1.png"),
                        fit:BoxFit.cover,
                      ),
                      
                    ),
  
  
  ),
),


                  ],
                ),
              ),
            ),


            Padding(
  padding: const EdgeInsets.only(top: 658,left: 15),
  child: Container(
    width: 350,
    height: 69,
   
    decoration: BoxDecoration(
      color: Color(0xFFF5A623), 
      borderRadius: BorderRadius.circular(8),
  
      boxShadow: [
        BoxShadow(
          color: Color(0x33F5A623), 
          blurRadius: 30,
          offset: Offset(0, 8),
        ),
      ],

      
    ),

    child: 
    Padding(
      padding: const EdgeInsets.only(top: 18),
      child: Text(
        "CREATE ACCOUNT",
        textAlign: TextAlign.center,
        style: TextStyle(
      
      fontFamily: 'SpaceGrotesk',
      fontSize: 22,
      fontWeight: FontWeight.bold,
      
      letterSpacing: 0,
      color: Color(0xFF452B00), 
         
        ),
      ),
    )
  ),
),

Padding(
  padding: const EdgeInsets.only(top: 750,left: 15),
  child: Container(
          width: 350,
          height: 20,
        
        
           decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/line_1.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
        
        
        ),
),

Padding(
  padding: const EdgeInsets.only(top: 790,left: 15),
  child: Container(
          width: 350,
          height: 62,
          
          child: Row(
            children: [
              Stack(
                children: [

              Container(
                  width: 163.89,
                  height: 62,
                  
                  decoration:  BoxDecoration(
                  color:   Color.fromARGB(255, 36, 35, 35),
                   borderRadius: BorderRadius.circular(8),  
    border: Border.all(
      color: const Color.fromARGB(255, 73, 73, 73), 
      width: 0.3,
    ),

                  
                    
                     
                    ),
                  
                ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 32),
                    child: Container(
                    width: 16.89,
                    height: 17.49,
                    
                    decoration:  BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/G.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    
                                    ),
                  ),

                   Padding(
                    padding: const EdgeInsets.only(top: 18,left: 60),
                    child: Container(
                    width: 71.41,
                    height: 24,

                    child: Text(
    "GOOGLE",
    style: TextStyle(
      fontFamily: 'BeVietnamPro',
      fontSize: 16,
      fontWeight: FontWeight.w400,
     
      color: Color(0xFFE5E2E1), 
    ),
  ),
                    
                   
                    
                                    ),
                  ),
                ]
              ),



               Padding(
                 padding: const EdgeInsets.only(left: 10),
                 child: Stack(
                  children: [
                 
                               Container(
                    width: 163.89,
                    height: 62,
                    
                    decoration:  BoxDecoration(
                    color:   Color.fromARGB(255, 36, 35, 35),
                     borderRadius: BorderRadius.circular(8),  
                     border: Border.all(
                       color: const Color.fromARGB(255, 73, 73, 73), 
                       width: 0.3,
                     ),
                 
                    
                      
                       
                      ),
                    
                  ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20,left: 32),
                      child: Container(
                      width: 16.89,
                      height: 17.49,
                      
                      decoration:  BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/apple.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      
                                      ),
                    ),
                 
                     Padding(
                      padding: const EdgeInsets.only(top: 18,left: 60),
                      child: Container(
                      width: 71.41,
                      height: 24,
                 
                      child: Text(
                     "APPLE",
                     style: TextStyle(
                       fontFamily: 'BeVietnamPro',
                       fontSize: 16,
                       fontWeight: FontWeight.w400,
                      
                       color: Color(0xFFE5E2E1), 
                     ),
                   ),
                      
                     
                      
                                      ),
                    ),
                  ]
                               ),
               ),
            ],
          ),


        
        
         
        
        ),
),

  Padding(
                      padding: const EdgeInsets.only(top:872 ,left: 15),
                      child: Container(
                      width: 350,
                      height: 24,
                      
                      decoration:  BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/footer.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      
                                      ),
                    ),





        ]
      ),


      

    
   
    
    ],
     ),


),


        
          ],
        ),
      ),
    );
  }
}