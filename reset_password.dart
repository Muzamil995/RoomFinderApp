import 'package:flutter/material.dart';
import 'package:mvvm/UI/signin_screen.dart';
class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.white,),
          Container(

            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.blue,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(11),
              bottomLeft: Radius.circular(11))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: ( ){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SigninScreen()));
                },
                    icon:  Icon(Icons.chevron_left_outlined,
                    color: Colors.white,
                    size: 28,)),
                Padding(
                  padding: const EdgeInsets.only(right: 140,top: 40),
                  child: Text("Reset Password",
                  style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 24),),
                )
              ],
            ),
          ),
          Positioned(
            top: 200,
            right: 20,
            left: 20,
            child: Container(
              child: TextFormField(
                cursorColor: Colors.black,
                obscureText: true,

                decoration: const InputDecoration(
                  hintText: "Reset Password",
                  labelText: "Reset Password",
                  labelStyle: TextStyle(color: Colors.black),
                  focusColor: Colors.black,
                  enabled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black,
                    width: 2)
                  ),
                  focusedBorder: OutlineInputBorder(
                     borderSide: BorderSide(
                       color: Colors.black,
                       width: 2
                     )
                  )
                ),
              ),
            ),
          ),
          Positioned(
            top: 350,
            right: 5,
            left: 5,
            child: Container(
              width: 380,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12)
              ),
              child: TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SigninScreen()));
                },
                child: Text("Reset Password",
                style: TextStyle(color: Colors.white,
                fontSize: 20),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
