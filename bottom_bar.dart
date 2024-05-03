 import 'package:flutter/material.dart';
import 'package:mvvm/home_page/account_screen.dart';
import 'package:mvvm/home_page/home_screen.dart';
import 'package:mvvm/home_page/search_screen.dart';
import 'package:mvvm/home_page/setting_page.dart';
class BottomBar extends StatefulWidget {
  int index;
    BottomBar({super.key,
  required this.index});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return     NavigationBar(

      height: 50,
      indicatorColor: Colors.white38,
      selectedIndex: widget.index,

      onDestinationSelected: (index){
        setState(() {
          this.widget.index=index;
        });
        if(index==1){
Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchScreen()));
        }
        else if(index==2){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingPage()));
        }
        else if(index==3){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>AccountScreen()));
      }
        else if(index==0){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
        }
        else{}},

      destinations:   [
        NavigationDestination(

            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home,color: Colors.blue,),
            label: 'Home',

        ),
        NavigationDestination(
            icon: Icon(Icons.search_outlined),
            selectedIcon: Icon(Icons.search,color: Colors.blue,)

            , label: 'Search',
        ),
        NavigationDestination
          (
            icon: Icon(Icons.settings_outlined
        ),
            selectedIcon: Icon(Icons.settings,color: Colors.blue,),
            label: 'Setting'),
        NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon:Icon(Icons.person,color: Colors.blue,),
            label: 'profile'),
      ]

    );
  }
  }

