import 'package:flutter/material.dart';
import 'package:mvvm/home_page/setting_page.dart';
class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height*.14,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(13),
                    bottomRight: Radius.circular(13)
                  )
                ),
                child: Row(
                  children: [
                    IconButton(onPressed: ( ){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingPage()));
                    },
                        icon: Icon(Icons.chevron_left,color: Colors.white,)),
                    SizedBox(width: 100,),
                    const Text("About Us",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 5,),
          Container(
            width: MediaQuery.sizeOf(context).width*.6,
            height: MediaQuery.sizeOf(context).height*.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14)
            ),
            child: const Image(image: NetworkImage(
              'https://images.pexels.com/photos/2670273/pexels-photo-2670273.jpeg?auto=compress&cs=tinysrgb&w=600'
            ),
            fit: BoxFit.fill,),
          ),
          SizedBox(height: 7,),
          Container(
            width: MediaQuery.sizeOf(context).width*.9,
            //height: MediaQuery.sizeOf(context).height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xffd9d9d9),
            ),

            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    "About the Company",
                    style: TextStyle(color: Colors.black,fontSize: 18),
                    textAlign:  TextAlign.start,
                  ),
                  SizedBox(height: 8,),
                  Text(
                    "Move over, Alexa and Homekit: A new Assistant is here to open-source your smart home  "
                        "Home Foundation, a non-profit built to ensure that smart home projects remain open and accessible to everyone."
                  ,style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 8,),
                  Text(
                    "About the Member",
                    style: TextStyle(color: Colors.black,fontSize: 18),
                    textAlign:  TextAlign.start,
                  ),
                  SizedBox(height: 8,),
                  Text(
                    "Move over, Alexa and Homekit: A new Assistant is here to open-source your smart home Home Assistant gets a boost from Open"
                        " Home Foundation, a non-profit built to ensure that smart home projects remain open and accessible to everyone."
                    ,style: TextStyle(fontSize: 14),
                  ),


                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
              width: MediaQuery.sizeOf(context).width*.8,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(14)
              ),
              child: Center(
                child: ListTile
                  (
                  leading: Icon(Icons.info_outline,
                    color: Colors.white,),
                  title: Text("Get ready to get Featured?",
                    style: TextStyle(color: Colors.black,
                        fontSize: 14),),
                  subtitle: Text("Go for Premium Service",
                    style: TextStyle(color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),),

                  trailing: ElevatedButton(
                    onPressed: (){},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue)
                    ),
                    child: Text("Upgrade",
                      style: TextStyle(color: Colors.white,
                          fontSize: 14),),
                  ),
                ),
              )
          )
        ],
      ),
    );
  }
}
