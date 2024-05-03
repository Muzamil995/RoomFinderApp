import 'package:flutter/material.dart';
import 'package:mvvm/home_page/widgets/bottom_bar.dart';
class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  List<String> roomImage=['https://cdn.pixabay.com/photo/2019/08/19/13/58/bed-4416515_1280.jpg',
    'https://cdn.pixabay.com/photo/2014/07/21/19/20/lobby-398845_640.jpg',
    'https://cdn.pixabay.com/photo/2022/04/14/13/36/bedroom-7132435_640.jpg',
    'https://images.pexels.com/photos/237371/pexels-photo-237371.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/279746/pexels-photo-279746.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/3754594/pexels-photo-3754594.jpeg?auto=compress&cs=tinysrgb&w=600'];
  List<String> hotelName=['Humming Bird','PC','Red Tomato','Cheezious','McDonald','Subway'];
  List<int> hotelPrice=[3000,4000,5000,800,700,690];
  List<String> hotelLocation=['Islamabad','Lahore','Karachi','lahore','lahore','Lahore'];
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Container(height: MediaQuery.sizeOf(context).height*.3,
              width: double.infinity,
              color: Colors.white,),
              Container(
                height: MediaQuery.sizeOf(context).height*.2,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(14),
                    bottomLeft: Radius.circular(14)
                  )
                ),
                child:   const Center(
                  child: Text("Account",style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                  ),),
                ),
              ),

              Positioned(
                top: 145,
                right: 100,
                left: 165,
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/image5.jpg'),
                      backgroundColor: Colors.white,

                    ),
                   Positioned(
                     top: 30,
                    left: 35,
                     child: IconButton(onPressed: ( ){},
                         icon: Icon(Icons.add,color: Colors.white,)),
                   )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 15,),
          const Text("Henry Black",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
          const SizedBox(height: 10,),
          const Text("10 Applied : Islamabad",
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),),
          const SizedBox(height: 30,),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             ElevatedButton(onPressed: ( ){},
                 style: ButtonStyle(
                   backgroundColor: MaterialStateProperty.all(Colors.white)
                 ),
                 child: const Row(
                   children: [
                     Icon(Icons.phone,
                     color: Colors.blue,),
                     SizedBox(width: 7,),
                     Text("Call Me",
                     style: TextStyle(color: Colors.blue,
                     ),)
                   ],
                 )),
             const SizedBox(width: 20,),
             ElevatedButton(onPressed: ( ){},
                 child: const Row(
                   children: [
                     Icon(Icons.message),
                     SizedBox(width: 7,),
                     Text("Message Me")
                   ],
                 )),

           ],
         ),
          SizedBox(height: 10,),
          Container(
            width: MediaQuery.sizeOf(context).width*.85,
            decoration: BoxDecoration(
              color: Color(0xffd9d9d9),
              borderRadius: BorderRadius.circular(12)
            ),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                    Text("Email",style: TextStyle(
                      color: Colors.black,
                      fontSize: 16
                    ),),
                    Text("Abc@gmail.com",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13
                    ),)
                  ],),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text("Location",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16
                      ),),
                      Text("BlueArea Islamabad",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13
                        ),)
                    ],),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text("Phone No",style: TextStyle(
                          color: Colors.black,
                          fontSize: 16
                      ),),
                      Text("(+92)305-1234657",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13
                        ),)
                    ],)
                ],
              ),
            ),
          ),

          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(

              children: [
              TextButton(onPressed: ( ){},

                  child: Text("Applied (5)",
                    style: TextStyle(fontSize: 18),
              )),
              SizedBox(width: 10,),
              TextButton(onPressed: ( ){},
                  child: Text("Liked",
                  style: TextStyle(
                    fontSize: 18
                  ),),
              )
            ],),
          ),
          SizedBox(
            height: 10,
          ),

          Expanded(
            child: Container(
              width: MediaQuery.sizeOf(context).width*.9,
              child: ListView.builder(
                  itemCount: roomImage.length,
                  itemBuilder: (context,index){
                    return ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 35,
                          height: 35,
                          child: Image(image: AssetImage(roomImage[index]),
                            fit: BoxFit.fill,),
                        ),
                      ),
                      title: Container(width: 100,
                        height: 30,
                        child:   Text("RS ${hotelPrice[index]}"),
                      ),
                      subtitle: Column(
                        children: [
                          Text('${hotelName[index]}',style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),),
                          Text("${hotelLocation[index]}",style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),),


                        ],
                      ),
                      trailing: Container(
                        width: 35,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(15)
                        ),

                        child:  Center(
                          child: Text("3.0 *",style: TextStyle(color: Colors.white,
                              fontSize: 12),),
                        ),
                      ),

                    );
                  }),
            ),
          )

        ],
      ),
      bottomNavigationBar: BottomBar(index: 3,),
    );
  }
}
