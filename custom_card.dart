import 'package:flutter/material.dart';
import 'package:mvvm/home_page/widgets/custom_gridview.dart';
class CustomCard extends StatefulWidget {
  const CustomCard({super.key});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
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
      appBar: AppBar(),
      body: Column(
        children: [

          Expanded(
            child: ListView.builder(
                itemCount: hotelPrice.length,
                itemBuilder: (context,index){
                  return ListTile(
                    tileColor: Color(0xffd9d9d9),
                    titleTextStyle:TextStyle(color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    subtitleTextStyle: TextStyle(
                        color: Colors.blue,
                        fontSize: 12,
                        fontWeight: FontWeight.normal
                    ),
                    leading: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(18),


                      ),
                      child:Image(image: NetworkImage(roomImage[index]),
                        fit: BoxFit.fill,) ,                     ),

                    title: Text(hotelName[index]),
                    subtitle: Text("Rs.${hotelPrice[index]}/per day"),
                    trailing: Text('Available'),
                  );
                }),
          ),
          ElevatedButton(onPressed: ( ){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>CustomGridView()));
          }, child: Text("Next"))
        ],
      ),
    );
  }
}
