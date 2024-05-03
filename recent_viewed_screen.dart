import 'package:flutter/material.dart';
import 'package:mvvm/home_page/setting_page.dart';
class RecentViewedScreen extends StatelessWidget {
    RecentViewedScreen({super.key});

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
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height*.16,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15)
                  )
                ),
              child: Row(
                children: [
                  IconButton(onPressed: ( ){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingPage()));
                  },
                      icon: Icon(Icons.chevron_left,
                      color: Colors.white,)),
                  SizedBox(width: 100,),
                  Text("Recently Viewed",
                  style: TextStyle(color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),)
                ],
              ),
              ),

            ],
          ),


          Expanded(
                        child: ListView.builder(
                itemCount: roomImage.length,
                itemBuilder: (context,index){
              return Column(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width*.9,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Color(0xffd9d9d9),
                      borderRadius: BorderRadius.circular(14)

                    ),
                    child: Center(
                      child: ListTile(
                        leading: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25)
                        ),
                          child: Image(

                            image:NetworkImage(roomImage[index]) ,
                            fit: BoxFit.fill,
                          ),
                                                ),
                        title: Text(hotelName[index]),
                        subtitle: Text("${hotelPrice[index]}/ per month \n"
                            "${hotelLocation[index]}"),
                        trailing: Text("Available"),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,)
                ],
              );
            }),
          )
        ],
      ),
    );
  }
}
