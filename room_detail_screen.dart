import 'package:flutter/material.dart';
import 'package:mvvm/UI/signin_two.dart';
import 'package:mvvm/home_page/widgets/custom_row.dart';
class RoomDetailScreen extends StatefulWidget {
  const RoomDetailScreen({super.key});

  @override
  State<RoomDetailScreen> createState() => _RoomDetailScreenState();
}

class _RoomDetailScreenState extends State<RoomDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      home: Scaffold(

        body: SingleChildScrollView(
          child: Column(
           // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height*.4,
                    width: MediaQuery.sizeOf(context).width*1,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(34),
                        bottomLeft: Radius.circular(34),
                      )
                    ),

                    child: const Image(
                     fit: BoxFit.fill,
                      image: AssetImage(
                      'assets/image2.jpg'
                    ),),

                  ),
                  Positioned(
                      top: 55,
                      left: 15,
                      child: InkResponse(
                         onTap: (){
                           Navigator.push(context,MaterialPageRoute(builder: (context)=>SigninTwoScreen()));
                         },
                          child: const Icon(Icons.chevron_left,color: Colors.white,size: 35,))),
                 const Positioned(
                   top: 270,
                   left: 15,
                   child: Column(
                     children: [
                       Text("Islamabad",
                         style: TextStyle(
                             color: Colors.white,
                           fontWeight: FontWeight.bold,
                           fontSize: 20
                         ),),
                       SizedBox(height: 5,),
                       Text("Rs.8000/per month",
                       style: TextStyle(
                         color: Colors.white,
                         fontWeight: FontWeight.bold,
                         fontSize: 20

                       ),)
                     ],
                   ),
                 )

                ],
              ),

               SizedBox(height: 15,),
              ListTile(
                leading:  const CircleAvatar(
                  backgroundImage: AssetImage('assets/image3.jpg'),
                  radius: 35,
                ),
                title: Row(
                  children: [
                    const Text("Henry Black",
                      style: TextStyle(color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),),
                    SizedBox(width: 100,),

                    Container(
                      width: 40,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                        borderRadius: BorderRadius.circular(14)
                      ),
                      child: const Icon(Icons.phone,color: Colors.white,
                      size: 18,),
                    ),
                    SizedBox(width: 7,),
                    Container(
                      width: 40,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(14)
                      ),
                      child: const Icon(Icons.message,color: Colors.white,
                      size: 18,),
                    )
                  ],
                ),



                subtitle: const Text("Islamabad",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14
                  ),),



              ),

              const SizedBox(
                height: 20,
              ),
                const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_on,color: Colors.blue,),
                            SizedBox(width: 10,),
                            Text("1.2 km from Islamabad",style: TextStyle(color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),),
                          ],
                        ),

                        SizedBox(height: 7,),
                        Text("Islamabad, Pakistan",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                        ),),
                        Text("0 Applied | 19 views",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16
                        ),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Text("Available",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),),
                        Text("Property Owned By :\n Ford",style: TextStyle(
                          color: Colors.black,
                          fontSize: 14
                        ),),
                        Text("view on Google Maps",
                        style: TextStyle(textBaseline: TextBaseline.alphabetic),)
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
             Padding(
               padding: const EdgeInsets.all(18.0),
               child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   const Text("Description",
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: 18,
                         fontWeight: FontWeight.bold

                     ),),
                   const SizedBox(
                     height: 7,
                   ),
                   const Text("ISLAMABAD: Prime Minister Shehbaz Sharif on Thursday accorded formal approval to reform the National Transmission and Dispatch "
                       "Company (NTDC) and formed a “special cell” to ensure their implementation"),
const SizedBox(height: 20,),
                   const Text("Facilities",
                     style: TextStyle(
                       color: Colors.black,
                       fontSize: 16,
                       fontWeight: FontWeight.bold
                     ),),
                   const SizedBox(
                     height: 30,
                   ),
                  CustomRow(title: "1 Big  Hall", icons: Icons.check),
                   CustomRow(title: "Shared Toilet", icons: Icons.check),
                   CustomRow(title: "Bikes and Car Parking", icons: Icons.check),
                   CustomRow(title: " 24/7 Water facility", icons: Icons.check),


                 ],
               ),
             )
            ],
          ),
        ),
        floatingActionButton: Container(
          width: 400,
          height: 30,
          decoration:   BoxDecoration(
            color:Colors.blue,
            borderRadius: BorderRadius.circular(14)


          ),
          child: const Center(
            child: Text("Send Now",
              style: TextStyle(
                  color: Colors.white
              ),),
          ),
        ),


      ),
    );
  }
}



