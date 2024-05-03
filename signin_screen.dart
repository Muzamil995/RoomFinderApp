import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:mvvm/UI/reset_password.dart';
import 'package:mvvm/UI/signin_two.dart';
import 'package:mvvm/UI/signup_screen.dart';
import 'package:mvvm/home_page/home_landing_page.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      // appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width*1,
            height: MediaQuery.sizeOf(context).height*1,
            color: Colors.white,
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * .2,
            decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))
            ),
            child: const Padding(
              padding: EdgeInsets.all(48.0),
              child: Column(
                children: [

                  Text(
                    "Room Finder",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Ultimate property Finder",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 130,
            right: 10,
            left: 10,
            child: Container(
              height: MediaQuery.sizeOf(context).height * 0.4,
              width: MediaQuery.sizeOf(context).width * 0.6,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xffd9d9d9),
                      spreadRadius: 2,
                      blurRadius: 3,
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    const Text(
                      "Mobile Number",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                      const Text(
                      "Please enter your phone number. We will send \n "
                      "you 4-digit code to verify your account.",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    IntlPhoneField(
                      decoration: const InputDecoration(
                          labelText: "Phone Number",
                          hintText: "Phone Number",
                          fillColor: Colors.blue,
                          border:
                              OutlineInputBorder(borderSide: BorderSide())),
                      initialCountryCode: 'PK',
                      onChanged: (e) {},
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 400,
                      height: 45,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SigninTwoScreen()));
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue)),
                          child: const Text(
                            "Send Code",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          )),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                      Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>ResetPassword()));
                            },
                            child: const Text(
                              "Reset Password ?",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 500,
            right: 10,
            left: 10,
            child: Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * .35,
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.white38, blurRadius: 2, spreadRadius: 2)
              ]),
              child: Column(
                children: [
                  const Text(
                    "Or Sign Up with",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.6,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black)),
                    child: const Row(
                      children: [
                        Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_35jvjvk3MxtO599eVWNLdllXEo__lnNLPTaGxsuj5A&s",
                        scale: 5))
                        ,
                      Center(
                          child: Text("Continue with facebook",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w300
                          ),
                          ))],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.6,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Colors.black),

                    ),
                    child: const Row(
                      children: [
                        Image(
                            fit: BoxFit.contain,
                            image:  NetworkImage('https://banner2.cleanpng.com/20180413/rfe/kisspng-google-logo-google-cloud-platform-gboard-google-pa-4-5ad0e95b57ec99.9189954815236406673602.jpg')),
                        Center(child: Text("Continue with Google",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w300
                        ),

                      ))],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("New Member ?",
                      style: TextStyle(fontSize: 14,
                          fontWeight:FontWeight.bold),),
                    TextButton(onPressed: ( ){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
                    },
                        child:  const Text("Sign up Here",
                          style: TextStyle(color: Colors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),))
                  ],
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
