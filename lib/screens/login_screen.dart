import 'package:flutter/material.dart';
import 'package:flutter_food_app/screens/extension.dart';
import 'login_screen.dart';

class LoginScreen extends StatefulWidget {
  
  const LoginScreen({super.key});

   @override
  State<LoginScreen> createState() => _LoginScreenState();
}

  class _LoginScreenState extends State<LoginScreen> {

  bool isobsecure = true;
   final _key = GlobalKey<FormState>();

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       SingleChildScrollView(
        child: Column(
          children: [

            Container(
              width: double.infinity,
              height: 57,
              color:   Color(0xFF0A0A0A),
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
                    padding: const EdgeInsets.only(left: 130),
                    child: SizedBox(
                            width: 86.31,
                            height: 24,
                            child: Image.asset(
                              "assets/images/text_gold.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                  ),

       Padding(
         padding: const EdgeInsets.only(left: 100),
         child: SizedBox(
          width: 20,
          height: 20,
          child: Image.asset(
            "assets/images/q_mark.png",
            fit: BoxFit.contain,
          ),
               ),
       ),
                ],
              ),
            ),

           Container(
  width: double.infinity,
  height: 910,
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 8, 8, 8).withOpacity(0.9),
    border: Border.all(
      color: const Color.fromARGB(255, 70, 70, 70),
      width: 0.9,
    ),
  ),
  child:
   Column(
    children: [
   
      Stack(
        children: [
   
            Container(
                    width: double.infinity,
                    height: 825,
                    decoration:  BoxDecoration(
                  //  color: Color.fromARGB(51, 147, 120, 75).withOpacity(0.1),
                     image: DecorationImage(
                    image: AssetImage("assets/images/effect_back.png"),
                    fit: BoxFit.cover,
                  ),
            
                
                  ),
               
            ),

  //                  Container(
  // width: double.infinity,
  // height: 180,
  // decoration: BoxDecoration(
  //   color: Color.fromARGB(255, 25, 25, 25).withOpacity(0.2),
   
  // ),),
                  

                Padding(
              padding: const EdgeInsets.only(top: 630,left: 20),
              child: Container(
                      width: 365,
                      height: 270,
                      decoration:  BoxDecoration(
                    //  color:  Color(0xFF0A0A0A).withOpacity(0.6),
                       image: DecorationImage(
                    image: AssetImage("assets/images/trans_burger.png"),
                    fit: BoxFit.cover,
                  ),
            
                   

                  
                    ),
                 
                    ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 90),
              child: Container(
                      width: 256,
                      height: 256,
                      decoration:  BoxDecoration(
                    //  color:  Color(0xFF0A0A0A),
                        image: DecorationImage(
                    image: AssetImage("assets/images/pasta.png"),
                    fit: BoxFit.cover,
                  ),
                   

                  
                    ),
                 
                    ),
            ),


            
          
          Container(
            margin: EdgeInsets.only(left: 160,top: 40),
          width: 80,
          height: 80,
           decoration:  BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/group_g.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
          
             
          
                  ),

                   Container(
            margin: EdgeInsets.only(left: 30,top: 130),
          width: 332.94,
          height: 68.8,
           decoration:  BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/Heading 2.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
          
             
          
                  ),

                   Container(
            margin: EdgeInsets.only(left: 70,top: 205),
          width: 245.83,
          height: 48,
          alignment: Alignment.center,

          child: Text("Experience culinary craft at the speed of street culture.",
          
          textAlign: TextAlign.center,
           style: TextStyle(
            color: Color(0xFF9F8E7A),
            fontSize: 16,
              fontFamily: 'BeVietnamPro',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0,
                     height: 1.5,
                    
)
          ),),

            Form(
      key: _key,
      child: Stack(
        children: [
              Container(
                margin: EdgeInsets.only(left: 20,top:300),
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
                 color:  Color(0xFF9F8E7A), 
                  ),
                ),
              ),

            Container(
              margin: EdgeInsets.only(left: 20,top: 325),
             width: 350,
            
            
             child: TextFormField(
               style: TextStyle(
            color: Color.fromARGB(255, 94, 91, 91),
                  ),

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                         return "Email is required";
                          } else if (!value.isValidEmail) {
                           return "Email is invalid";
                             }
                             return null;
                            },
               
               
               decoration: InputDecoration(
                   isDense: true, 
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                     ),
            
                 filled: true,
                    fillColor: Color.fromARGB(255, 54, 53, 53),
                    
                    
                    
               
                
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
                    color: Color.fromARGB(255, 216, 151, 38), 
                    width: 3,
                  ),
                ),
                     ),),),


   Container(
  margin: EdgeInsets.only(left: 20, top: 400),
  width: 350,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [

      Text(
        "PASSWORD",
        style: TextStyle(
          fontFamily: 'BeVietnamPro',
          fontSize: 14,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.4,
          color: Color(0xFF9F8E7A),
        ),
      ),

      Text(
        "FORGET?",
        style: TextStyle(
          fontFamily: 'BeVietnamPro',
          fontSize: 11,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.4,
          color: Color(0xFFF5A623),
        ),
      ),

    ],
  ),
),

              Container(
                margin: EdgeInsets.only(left: 20,top: 430),
               width: 350,
              
              
               child: TextFormField(
              
                 obscureText: isobsecure,
                 style: TextStyle(
              color: Color.fromARGB(255, 94, 91, 91),
                    ),

                     validator: (value) {
                    if(value==null || value.isEmpty){
                      return "Password is Empty";
                    }
                    return null;
                  },
                   
                 
                 
                 decoration: InputDecoration(
                     isDense: true, 
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 10,
                       ),
              
                   filled: true,
                     fillColor: Color.fromARGB(255, 54, 53, 53), 
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
                    color: const Color.fromARGB(255, 104, 102, 102),
                    
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
                      color: Color.fromARGB(255, 216, 151, 38), 
                      width: 3,
                    ),
                  ),
                       ),),),

        ],
      ),
   ),

  Padding(
  padding: const EdgeInsets.only(top: 540,left: 20),
  child: GestureDetector(
    onTap: () {
      if (_key.currentState!.validate()) {
        print("Form Valid");
      }
    },
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
      alignment: Alignment.center,
      child: Text(
        "SIGN IN",
        style: TextStyle(
          fontFamily: 'SpaceGrotesk',
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Color(0xFF452B00),
        ),
      ),
    ),
  ),
),

          
Container(
  margin: EdgeInsets.only(left: 20,top: 620),
        width: 350,
        height: 20,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 109.53,
              height: 1,
               color: Color.fromARGB(255, 63, 63, 63),

            ),

              Text(
        "OR CONTINUE WITH",
        style: TextStyle(
          fontFamily: 'BeVietnamPro',
          fontSize: 12,
          fontWeight: FontWeight.w400,
          letterSpacing: 0,
          height: 2,
         
            color: Color.fromARGB(255, 87, 85, 85),
        ),
      ),

        Container(
              width: 109.53,
              height: 1,
             color: Color.fromARGB(255, 63, 63, 63),

            ),


          ],

        ),
      
      
        
      
      ),
Container(
  margin: EdgeInsets.only(top: 680, left: 20),
  width: 350,
  height: 60,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [

      // GOOGLE BUTTON
      Container(
        width: 165,
        height: 60,
        decoration: BoxDecoration(
         
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Color.fromARGB(255, 54, 54, 54),
            width: 2,
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/G.png",
                width: 16,
                height: 16,
              ),
              SizedBox(width: 8),
              Text(
                "GOOGLE",
                style: TextStyle(
                  fontFamily: 'BeVietnamPro',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFE5E2E1),
                ),
              ),
            ],
          ),
        ),
      ),

      // APPLE BUTTON
      Container(
        width: 165,
        height: 60,
        decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
         color: Color.fromARGB(255, 54, 54, 54),
            width: 2,
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/apple.png",
                width: 16,
                height: 16,
              ),
              SizedBox(width: 8),
              Text(
                "APPLE",
                style: TextStyle(
                  fontFamily: 'BeVietnamPro',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFE5E2E1),
                ),
              ),
            ],
          ),
        ),
      ),

    ],
  ),
),


Container(
  margin: EdgeInsets.only(top: 790,left: 70),
  width: 252.5,
  height:24 ,

  child: Row(
    children: [

      Container(
        width: 186.81,
        height: 24,
        child: Text("Don't have an account?",
        style: TextStyle(
                  fontFamily: 'BeVietnamPro',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                color: Color(0xFF9F8E7A),
                ),),
        
        
        
      ),

      Container(
        width: 61.69,
        height: 24,
        child: Text("Sign Up",
        style: TextStyle(
                  fontFamily: 'BeVietnamPro',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                color: Color(0xFFF5A623),
                ),),
        
        
        
      ),


    ],
  ),

)

//


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