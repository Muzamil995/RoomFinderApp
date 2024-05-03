import 'package:flutter/material.dart';

import '../../Model/grid_data.dart';
class CustomSearchGridView extends StatelessWidget {
    CustomSearchGridView({super.key});
  final List _photo=[
    data(image: 'assets/image1.jpg', title: "Time Square"),
    data(image: 'assets/image2.jpg', title: "Califorina"),
    data(image: 'assets/image3.jpg', title: "Islamabad"),
    data(image: 'assets/image4.jpg', title: " Lahore"),
    data(image: 'assets/image5.jpg', title: "Karachi"),
    data(image: 'assets/image6.jpg', title: "Melbourne"),
  ];

  @override
  Widget build(BuildContext context) {
    return
      GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10
          ),
          itemCount:_photo.length ,
          itemBuilder: (context ,index){
            return Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage(_photo[index].image),
                          fit:BoxFit.fill
                      )
                  ),
                ),
                Positioned(
                  top: 160,
                  left: 1,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.policy_outlined,color: Colors.white,),
                          SizedBox(width: 12,),
                          Text(_photo[index].title,
                            style: TextStyle(color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),)
                        ],
                      )
                    ],
                  ),
                )
              ],
            );
          });
  }
}
