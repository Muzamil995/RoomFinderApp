import 'package:flutter/material.dart';
import 'package:mvvm/home_page/setting_page.dart';
import 'package:mvvm/home_page/widgets/custom_QandAns.dart';
import 'package:mvvm/home_page/widgets/custom_list_tile.dart';
class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.sizeOf(context).height*.15,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                   borderRadius: BorderRadius.only(
                     bottomLeft: Radius.circular(15),
                     bottomRight: Radius.circular(15)
                   )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        IconButton(onPressed: ( ){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingPage()));
                        },
                            icon: Icon(Icons.chevron_left,color: Colors.white,)),
                        SizedBox(width: 135,),
                        Text("Help",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold

                        ),)
                      ],
                    ),
                  ),
                )
              ],
            ),
SizedBox(height: 15,),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text("Frequent Asked Questions",
                  style: TextStyle(color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
                SizedBox(
                  height: 15,
                ),
                CustomQaA(text: "What is a room finder app?",
                    subText: "A room finder app is a mobile application that helps users search, compare, and book accommodations such as hotel rooms, apartments, hostels, and vacation rentals."),
                SizedBox(height: 5,),
                CustomQaA(text: "How does a room finder app work?",
                    subText: "Room finder apps typically utilize search algorithms to match user preferences with available accommodations. "),
                SizedBox(height: 5,),
                CustomQaA(text: "How does a room finder app work?",
                    subText: "Room finder apps typically utilize search algorithms to match user preferences with available accommodations. "),

                SizedBox(height: 5,),
                CustomQaA(text: "How does a room finder app work?",
                    subText: "Room finder apps typically utilize search algorithms to match user preferences with available accommodations. "),
                SizedBox(height: 5,),
                CustomQaA(text: "How does a room finder app work?",
                    subText: "Room finder apps typically utilize search algorithms to match user preferences with available accommodations. "),
                SizedBox(height: 5,),
                CustomQaA(text: "How does a room finder app work?",
                    subText: "Room finder apps typically utilize search algorithms to match user preferences with available accommodations. "),
                SizedBox(height: 5,),
                CustomQaA(text: "How does a room finder app work?",
                    subText: "Room finder apps typically utilize search algorithms to match user preferences with available accommodations. "),
                SizedBox(height: 5,),
                CustomQaA(text: "How does a room finder app work?",
                    subText: "Room finder apps typically utilize search algorithms to match user preferences with available accommodations. "),
                SizedBox(height: 5,),
                CustomQaA(text: "How does a room finder app work?",
                    subText: "Room finder apps typically utilize search algorithms to match user preferences with available accommodations. "),
                SizedBox(height: 5,),
                CustomQaA(text: "How does a room finder app work?",
                    subText: "Room finder apps typically utilize search algorithms to match user preferences with available accommodations. "),
                SizedBox(height: 5,),
                CustomQaA(text: "How does a room finder app work?",
                    subText: "Room finder apps typically utilize search algorithms to match user preferences with available accommodations. "),

                 ],
            ),
          )



          ],
        ),
      ),
    );
  }
}
