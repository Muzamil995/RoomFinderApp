import 'package:flutter/material.dart';
import 'package:mvvm/home_page/setting_page.dart';
import 'package:mvvm/home_page/widgets/custom_notify_list_tile.dart';
class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
         children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height*.15,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(12),
                    bottomLeft: Radius.circular(18)
                  ),
                ),
                child:   Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 10,),
                      IconButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingPage()));
                        },
                        icon: const Icon(Icons.chevron_left_outlined,
                        color: Colors.white,),),
                      const SizedBox(width: 120,),
                      const Text("Notifications",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                ),
              )
            ],
          ),
          
          const SizedBox(height: 30,),
          const Padding(
            padding: EdgeInsets.all(14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Today",
                style: TextStyle(color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold),),
                Text("Mark all read",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16
                ),),

              ],
            ),
          ),
          const SizedBox(height: 15,),
          
          const CustomNotifyListTile(iconData: Icons.notifications_active, title: "Welcome Don`t forget to complete your personal info"),

          const CustomNotifyListTile(iconData: Icons.notifications,
              title: "There are 4 available properties, you recently selected. Click here for more details."),

          const CustomNotifyListTile(iconData: Icons.notifications_active,
              title: "There are 4 available properties, you recently selected. Click here for more details."),
const SizedBox(height: 15,),
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Yesterday",style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
              ),
            ),
          ),
           const CustomNotifyListTile(iconData: Icons.notifications_active,
               title: "There are 4 available properties, you recently selected. Click here for more details."),
           const CustomNotifyListTile(iconData: Icons.notifications_active,
               title: "There are 4 available properties, you recently selected. Click here for more details."),
           const CustomNotifyListTile(iconData: Icons.notifications_active,
               title: "There are 4 available properties, you recently selected. Click here for more details.")


        ],
      ),
    );
  }
}
