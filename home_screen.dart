import 'package:flutter/material.dart';
import 'package:mvvm/home_page/sub_page/room_detail_screen.dart';
import 'package:mvvm/home_page/widgets/bottom_bar.dart';
import 'package:mvvm/home_page/widgets/custom_gridview.dart';
import 'package:mvvm/home_page/widgets/custom_text.dart';
import 'package:mvvm/home_page/widgets/text_button.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<String> roomImage = [
    'https://cdn.pixabay.com/photo/2019/08/19/13/58/bed-4416515_1280.jpg',
    'https://cdn.pixabay.com/photo/2014/07/21/19/20/lobby-398845_640.jpg',
    'https://cdn.pixabay.com/photo/2022/04/14/13/36/bedroom-7132435_640.jpg',
    'https://cdn.pixabay.com/photo/2019/08/19/13/58/bed-4416515_1280.jpg',
    'https://cdn.pixabay.com/photo/2014/07/21/19/20/lobby-398845_640.jpg',
    'https://cdn.pixabay.com/photo/2022/04/14/13/36/bedroom-7132435_640.jpg',
    'https://cdn.pixabay.com/photo/2019/08/19/13/58/bed-4416515_1280.jpg',
    'https://cdn.pixabay.com/photo/2014/07/21/19/20/lobby-398845_640.jpg',
    'https://cdn.pixabay.com/photo/2022/04/14/13/36/bedroom-7132435_640.jpg',
  ];
  List<String> hotelName = ['Humming Bird', 'PC', 'Red Tomato','Humming Bird', 'PC', 'Red Tomato','Humming Bird', 'PC', 'Red Tomato',];
  List<int> hotelPrice = [3000, 4000, 5000,3000, 4000, 5000,3000, 4000, 5000,];
  List<String> hotelLocation = ['Islamabad', 'Lahore', 'Karachi','Islamabad', 'Lahore', 'Karachi','Islamabad', 'Lahore', 'Karachi',];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Card(
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height*.38,
                   width: double.infinity,
                    color: Colors.white,
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height*.15,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(14),
                        bottomRight: Radius.circular(14),
                      )
                    ),
                    child: Center(
                      child: Text("Room Finder",
                      style: TextStyle(fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 20,
                    right: 20,
                    child: Container(
                      width: MediaQuery.sizeOf(context).width*.6,
                      height: MediaQuery.sizeOf(context).height*.26,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffd9d9d9),
                            blurRadius: 2,

                          )
                        ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            const Text(

                              "Find a property anywhere",style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),),
                            const SizedBox(height: 15,),
                            TextFormField(
                              cursorColor: Colors.blue,
                              decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.location_on,color: Colors.blue,),
                                hintText: "Search address or near you",
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black26,
                                    width: 2
                                  )
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                    width: 2
                                  )
                                )

                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(12)
                              ),
                              child: Center(
                                child: Text("Search Now",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                                ),),
                              ),
                            ),
                            SizedBox(height: 15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                            Text("Advance Search",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,

                              ),)
                          ],)

                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextButton(name: "Flat", onpressed: null),
                  CustomTextButton(name: "Rooms", onpressed: null),
                  CustomTextButton(name: "Hall", onpressed: null),
                  CustomTextButton(name: "Rent", onpressed: null),
                  CustomTextButton(name: "House", onpressed: null)

                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(data: 'Recently added properties'),
                  CustomText(data: 'View All'),
                ],
              ),
            ),

          Expanded(
            child: ListView.builder(


                itemCount: roomImage.length,
                itemBuilder: (context,index){
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>RoomDetailScreen()));
                    },
                    child: ListTile(
                      contentPadding: EdgeInsets.all(4),
                      leading: Container(
                        height: 40,
                        width: 60,
                        child: Image(image: NetworkImage(roomImage[index]),
                          fit: BoxFit.fill,),
                      ),
                      title: Text(hotelLocation[index]),
                      tileColor: Color(0xffd9d9d9),
                      subtitle: Text(
                          "Rs.${hotelPrice[index]}/per day"
                      ),
                      trailing: Text("Available"),
                    ),
                  );
                }),
          ),

          ],
        ),
        bottomNavigationBar: BottomBar(index: currentIndex,),
      ),
    );
  }
}
