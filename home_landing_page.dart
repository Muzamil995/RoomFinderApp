import 'package:flutter/material.dart';
import 'package:mvvm/home_page/widgets/bottom_bar.dart';
import 'package:mvvm/home_page/widgets/custom_gridview.dart';

import 'package:mvvm/home_page/widgets/custom_stack.dart';
import 'package:mvvm/home_page/widgets/custom_text.dart';
import 'package:mvvm/home_page/widgets/text_button.dart';
class HomeLandingPage extends StatefulWidget {
  const HomeLandingPage({Key? key});

  @override
  State<HomeLandingPage> createState() => _HomeLandingPageState();
}

class _HomeLandingPageState extends State<HomeLandingPage> {
  List<String> roomImage = [
    'https://cdn.pixabay.com/photo/2019/08/19/13/58/bed-4416515_1280.jpg',
    'https://cdn.pixabay.com/photo/2014/07/21/19/20/lobby-398845_640.jpg',
    'https://cdn.pixabay.com/photo/2022/04/14/13/36/bedroom-7132435_640.jpg'
  ];
  List<String> hotelName = ['Humming Bird', 'PC', 'Red Tomato'];
  List<int> hotelPrice = [3000, 4000, 5000];
  List<String> hotelLocation = ['Islamabad', 'Lahore', 'Karachi'];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.45,
              child: const CustomStack(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextButton(name: 'flat',   onpressed: null,),
                CustomTextButton(name: 'Rooms',   onpressed: null,),
                CustomTextButton(name: 'Hall',   onpressed: null,),
                CustomTextButton(name: 'Rent',   onpressed: null,),
                CustomTextButton(name: 'House',  onpressed: null,),
              ],
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
                itemCount: hotelPrice.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      tileColor: const Color(0xffd9d9d9),
                      title: Text(hotelName[index]),
                      subtitle: Text("Rs.${hotelPrice[index]}/per day"),
                      trailing: Text('Available'),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 180,),
            Expanded(child: CustomGridView()),
          ],
        ),
        bottomNavigationBar: BottomBar(index: currentIndex),
      ),
    );
  }
}
