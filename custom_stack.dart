import 'package:flutter/material.dart';
class CustomStack extends StatefulWidget {
  const CustomStack({super.key});

  @override
  State<CustomStack> createState() => _CustomStackState();
}

class _CustomStackState extends State<CustomStack> {
  @override
  Widget build(BuildContext context) {
    return    Stack(
      children:
      [

        Container(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height*.25,
          decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12)

              )
          ),
          child: const Center(
            child: Text(
              "Room Finder",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.sizeOf(context).height*.15,
          right: 20,
          left: 20,
          child: Container(
            width: 300,
            // height: MediaQuery.sizeOf(context).height*.3,
            decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.circular(11),
                boxShadow: const [
                  BoxShadow(
                      color: Color(0xffd9d9d8),
                      spreadRadius: 2,
                      blurRadius: 2
                  )
                ]

            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text("Find a property anywhere",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.normal
                      ),
                      textAlign: TextAlign.left,),
                  ),

                  SizedBox(height: 10,),
                  TextFormField(
                    cursorColor: Colors.black,
                    decoration: const InputDecoration
                      (

                        prefixIcon: Icon(Icons.edit_location,
                          color: Colors.blue,),
                        hintText: "Search address or near you",
                        enabled: true,
                        focusColor: Colors.black,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,
                                width: 2)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,
                                width: 2)
                        )
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 300,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.blue,

                    ),
                    child: ElevatedButton(
                      child:const Text(
                        "Search Now",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ) ,
                      onPressed: (){},
                    ),
                  ),
                  SizedBox(height: 20,),
                  const Align(
                    alignment: Alignment.bottomRight,
                    child: Text(

                      "Advance Search",style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,

                    ),
                    ),
                  )

                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
