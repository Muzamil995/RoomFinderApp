import 'package:flutter/material.dart';
import 'package:mvvm/UI/signin_screen.dart';
class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  void createdAccount(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Builder(
          builder: (BuildContext context) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                action: SnackBarAction(
                  label: "Created",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SigninScreen()),
                    );
                  },
                ),
                content: const Row(
                  children: [
                    Icon(Icons.gpp_good_outlined, color: Colors.blue),
                    Text(
                      "Account Created Successfully",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
            );
            return SizedBox.shrink(); // Return an empty widget here
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width*1,
            height: MediaQuery.sizeOf(context).height*1,
            color: Colors.white,
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height*.3,
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
              ),

            ),
            child: const Padding(
              padding: EdgeInsets.all(48.0),
              child: Column(
                children: [
                  Text("Room Finder",
                  style: TextStyle(color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),),
                  SizedBox(height: 15,),
                  Text("Ultimate property Finder  ",
                    style: TextStyle(color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),),
                ],
              ),
            ),
          ),

          Positioned(
            top: 140,
            right: 20,
            left: 20,
            child: Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.sizeOf(context).width*0.5,
            //  height: MediaQuery.sizeOf(context).height*.4,
              decoration:   BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: Colors.white70,
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xffd9d9d9),
                    blurRadius: 3,
                    spreadRadius: 3,
                    blurStyle: BlurStyle.inner,
                  )
                ]
              ),
              child:   Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Create an account",
                    style: TextStyle(color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                        hintText: " Full Name",
                        labelText: "Full Name",
                        labelStyle: TextStyle(color: Colors.black,),
                        focusColor: Colors.black,
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,
                                width: 2)
                        ),
                        fillColor: Colors.white,
                        enabled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide:BorderSide(
                              color: Colors.black,
                              width: 2
                          ),
                        )

                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(

                       cursorColor: Colors.black,
                    decoration: const InputDecoration(
                      hintText: "Email Address",
                      labelText: "Email Adress",
                      labelStyle: TextStyle(color: Colors.black,),
                      focusColor: Colors.black,
                      filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,
                                width: 2)
                        ),
                      fillColor: Colors.white,
                      enabled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide:BorderSide(
                          color: Colors.black,
                          width: 2
                        ),
                      )

                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                        hintText: "Password",
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.black,),
                        focusColor: Colors.black,
                        suffixIcon: Icon(Icons.visibility_off,color: Colors.black,),
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,
                                width: 2)
                        ),
                        fillColor: Colors.white,
                        enabled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide:BorderSide(
                              color: Colors.black,
                              width: 2
                          ),
                        )

                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                        hintText: "Confirm Password",
                        labelText: "Confirm Password",
                        labelStyle: TextStyle(color: Colors.black,),
                        focusColor: Colors.black,
                        suffixIcon: Icon(Icons.visibility_off,color: Colors.black,),
                        filled: true,
                        fillColor: Colors.white,
                        enabled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,
                                width: 2)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:BorderSide(
                              color: Colors.black,
                              width: 2
                          ),
                        )

                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 400,
                    height: 50,
                    child: ElevatedButton(
                        child: Text("Create Account",
                          style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),),

                        onPressed:(){
    Navigator.push(context,
    MaterialPageRoute(builder: (context)=>SigninScreen()));
    }  ,

                        style: ButtonStyle(

                          backgroundColor: MaterialStateProperty.all(Colors.blue),

                        ),
                    ),)
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 220,
            right: 20,
            left: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Have an account?",
                style: TextStyle(color: Colors.black,
                fontSize: 18,
                ),),
                TextButton(onPressed: ( ){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SigninScreen()));
                },
                    child: Text("Sign In Here",
                    style: TextStyle(color: Colors.blue,
                    fontSize: 20,

                    ),))
              ],
            ),
          )
        ],
      ),
    );
  }
}
