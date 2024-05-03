import 'package:flutter/material.dart';
import 'package:mvvm/home_page/widgets/bottom_bar.dart';
import 'package:mvvm/home_page/widgets/custom_search_gridview.dart';

import '../Model/grid_data.dart';
class SearchScreen extends StatefulWidget {
    SearchScreen({super.key});
  final List _photo=[
    data(image: 'assets/image4.jpg', title: " Lahore"),
    data(image: 'assets/image1.jpg', title: "Time Square"),

    data(image: 'assets/image2.jpg', title: "Califorina"),
    data(image: 'assets/image4.jpg', title: " Lahore"),
    data(image: 'assets/image3.jpg', title: "Islamabad"),
    data(image: 'assets/image4.jpg', title: " Lahore"),
    data(image: 'assets/image5.jpg', title: "Karachi"),
    data(image: 'assets/image6.jpg', title: "Melbourne"),
    data(image: 'assets/image4.jpg', title: " Lahore"),
    data(image: 'assets/image5.jpg', title: "Karachi"),

  ];

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold  (
      body: Column(

        children: [
          Stack(
            children: [
              Container(color: Colors.white,
              width: MediaQuery.sizeOf(context).width*1,
              height: MediaQuery.sizeOf(context).height*.5,),
              Container(
                height: MediaQuery.sizeOf(context).height*.2,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(14),
                    bottomRight: Radius.circular(14)
                  )
                ),
                child: const Center(
                  child: Text("Room Finder",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),),
                ),
              ),
              Positioned(
                top: 120,
                right: 20,
                left: 20,

                child: Container(
                  height:  300,
                  width: 450,
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
                    padding: const EdgeInsets.all(10.0),
                    child: Column(

                      children: [
                        SizedBox(height: 6,),
                        const Text("Advance Search",
                        style: TextStyle(color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        TextFormField(
                          cursorColor: Colors.blue,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.location_on,color: Colors.blue,),
                            labelText: "Enter an address or city",
                            hintText: "Enter an address or city",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 2
                              )
                            )

                          ),
                        ),
                        SizedBox(height: 5,),
                        TextFormField(
                          cursorColor: Colors.blue,
                          decoration: const InputDecoration(
                            labelText: "Enter price range",
                            hintText: "Enter price range",
                            prefixIcon: Icon(Icons.price_change_rounded,
                            color: Colors.blue,),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 2,
                              )
                            )
                          ),
                        ),
                        SizedBox(height: 5,),
                        TextFormField(
                          cursorColor: Colors.blue,
                          decoration: const InputDecoration(
                            labelText: 'Resident Type',
                            hintText: 'Resident Type',
                            prefixIcon: Icon(Icons.list,
                            color: Colors.blue,),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 2
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          height: 45,
                          width: 400,
                          child: ElevatedButton(
                            child: const Text("Search Now",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),),
                            onPressed: (){},
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  SizedBox(
                  height: 20,
                ),
                  Text('Locations',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                SizedBox(height: 10,),


              ],
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.sizeOf(context).width*.8,
              child:  GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10),
                  itemCount: widget._photo.length,
                  itemBuilder: (context,index){
                    return Stack(
                      children:[ Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16)
                        ),
                        child: Image(
                          image: AssetImage(widget._photo[index].image,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 130,
                        left: 1,
                        child: Row(
                          children: [
                            Icon(Icons.location_on,color: Colors.white,),
                            Text(widget._photo[index].title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14
                            ),)
                          ],
                        ),
                      )
                      ]
                    );
              })
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomBar(index: 1,),
    );
  }
}
