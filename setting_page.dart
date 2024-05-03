import 'package:flutter/material.dart';
import 'package:mvvm/UI/signup_screen.dart';
import 'package:mvvm/home_page/sub_page/about_us.dart';
import 'package:mvvm/home_page/sub_page/help_screen.dart';
import 'package:mvvm/home_page/sub_page/notifications_screen.dart';
import 'package:mvvm/home_page/sub_page/recent_viewed_screen.dart';
import 'package:mvvm/home_page/widgets/bottom_bar.dart';
import 'package:mvvm/home_page/widgets/custom_list_tile.dart';
class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  void signOut(BuildContext context){
    showDialog(context: context, builder: (BuildContext context){
      return  AlertDialog(
title: Text("Sign Out"),
content: Text("Are you sure"),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("X Cancel")),
           TextButton(onPressed: ( ){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
           }, child: Text("OK")),
        ],
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return    Scaffold(
     // appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         Stack(
           children: [
             Container(
               width: double.infinity,
               height: MediaQuery.sizeOf(context).height*.2,
               color: Colors.white,
             ),
             Container(
               width: double.infinity,
               height: MediaQuery.sizeOf(context).height*.15,
               decoration: const BoxDecoration(
                 color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12)
                )

               ),
               child: const Center(
                 child: Text("Account",style: TextStyle(color: Colors.white,
                 fontSize: 20,
                 fontWeight: FontWeight.bold),),
               ),
             ),
             Positioned(
               top: 88,
               left: 153,
               child: Stack(
                 children: [ CircleAvatar(
                   radius: 45,
                   backgroundImage: AssetImage('assets/image5.jpg'),
                    ),
                 Positioned(
                   top: 45,
                   left: 45,
                   child: IconButton(onPressed: ( ){},
                       style: const ButtonStyle(
                        // backgroundColor: MaterialStateProperty.all(Colors.black),
                        // iconColor: MaterialStateProperty.all(Colors.white),
                        // foregroundColor: MaterialStateProperty.all(Colors.black)
                       ),
                       icon: Icon(Icons.add,
                       color: Colors.white,
                       size: 30,)),
                 )
                 ]
               ),
             )
           ],
         ),
          SizedBox(height: 30,),
          Text("Henry Black",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),),
          
          SizedBox(
            height: 15,
          ),
          Text("10 Applied | Dubai",
            style: TextStyle(fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black),),
          
          SizedBox(
            height: 30,
          ),
          Container(
            width: MediaQuery.sizeOf(context).width*.8,
            height: MediaQuery.sizeOf(context).height*.09,
            decoration: BoxDecoration(
              color: Color(0xffd9d9d9),
              borderRadius: BorderRadius.circular(15)
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.person_outline,color: Colors.blue,),
                title: Text("Edit Profile",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                ),),
                subtitle: Text("Edit all the basic profile information associated with your profile",
                style: TextStyle(color: Colors.black26,
                fontSize: 14),),
              ),
            ),
          ),

          SizedBox(height: 50,),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationsScreen()));
              },
              child: const CustomListTile(iconData: Icons.notifications_active, text:"Notification" )),

          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>RecentViewedScreen()));
              },
              child: const CustomListTile(iconData: Icons.gradient_rounded, text:"Recent Viewed" )),

          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HelpScreen()));
              },
              child: const CustomListTile(iconData: Icons.speaker_notes, text:"Get Help" )),

          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutUsScreen()));
              },
              child:const  CustomListTile(iconData: Icons.info_outline, text:"About us" )),

          InkWell(
             onTap: (){
               signOut(context);
             },
              child: const CustomListTile(iconData: Icons.logout, text:"SignOut" )),

        ],
      ),
      bottomNavigationBar: BottomBar(index: 2,),
    );
  }
}
