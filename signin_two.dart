import 'package:flutter/material.dart';
import 'package:mvvm/home_page/home_landing_page.dart';
import 'package:mvvm/home_page/home_screen.dart';

import 'package:mvvm/home_page/sub_page/room_detail_screen.dart';



class SigninTwoScreen extends StatefulWidget {
  const SigninTwoScreen({super.key});

  @override
  State<SigninTwoScreen> createState() => _SigninTwoScreenState();
}

class _SigninTwoScreenState extends State<SigninTwoScreen> {
  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.white70,),


          Container(width: double.infinity,
          height: MediaQuery.sizeOf(context).height*.25,
          decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(12),
              bottomLeft: Radius.circular(12)
            )
          ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Room Finder",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),),
                Text("Ultimate property Finder",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 18
                ),)
              ],
            ),
          ),

          Positioned(
            top: 150,
            right: 20,
            left: 20,
            child: Container(
              width: MediaQuery.sizeOf(context).width*.6,
              height: MediaQuery.sizeOf(context).height*.35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: const [
                 BoxShadow(
                   color: Color(0xffd9d9d9),
                   blurRadius: 2,
                   spreadRadius: 2
                 )
                ]
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(

                  children: [
                    SizedBox(height: 10,),
                    const Text("Sign in to Continue",
                    style: TextStyle(color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),),

                    SizedBox(height: 10,),

                    TextFormField(
                    cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        hintText: "Email Address",
                       border: OutlineInputBorder(
                         borderSide: BorderSide(
                           color: Colors.black12,
                           width: 2
                         )
                       ),

                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black12,
                            width: 2
                          )
                        )
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      obscureText: true,
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        hintText: 'Password',
                        suffixIcon: Icon(Icons.visibility_off,
                        color: Colors.black,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black12,
                            width: 1
                          )
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black12,
                            width: 2
                          )
                        )
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      width: 350,
                      height: 49,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                         borderRadius: BorderRadius.circular(12)
                        
                      ),
                      child: ElevatedButton(onPressed:  (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                      },


                          child: Text("Login in")),
                    ),
                    SizedBox(height: 20,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Reset Password?",
                          style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          ),
                          textAlign: TextAlign.right,
                 ),
                      ],
                    )

                  ],
                ),
              ),

            ),
          ),
          Positioned(
            top: 500,
            right: 1,
            left: 1,
            child: Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height*.35,
              child: Column(
                children: [
                   const Text("Or Sign Up with",
                   style: TextStyle(
                     color: Colors.black,
                     fontSize: 14
                   ),),
                  SizedBox(height: 15,),
                  Container(
                    width: 350,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black)
                    ),
                    child: const Row(
                      children: [
                        Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_35jvjvk3MxtO599eVWNLdllXEo__lnNLPTaGxsuj5A&s',
                            scale: 5)),
                        Center(
                          child: Text('Continue with Facebook',
                          style: TextStyle(color: Colors.black,
                          fontSize: 16),),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 350,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black)
                    ),
                    child: const Row(
                      children: [
                        Image(image: NetworkImage('https://banner2.cleanpng.com/20180413/rfe/kisspng-google-logo-google-cloud-platform-gboard-google-pa-4-5ad0e95b57ec99.9189954815236406673602.jpg',
                        scale: 5)),
                        Center(
                          child: Text("Continue with Google",
                          style: TextStyle(color: Colors.black,
                          fontSize: 16),),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )


        ],
      ),
    );
  }
}
