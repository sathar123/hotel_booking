

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotel_booking/style.dart';
import 'package:hotel_booking/widget/appbar.dart';
import 'package:hotel_booking/widget/hotelpackage.dart';
import 'package:hotel_booking/widget/popularHotel.dart';
import 'package:hotel_booking/widget/searchbar.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: style.appbarcolor,
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0,right: 10,top: 10),
        child: CustomScrollView(
          slivers: [

            MyAppbar(),
            SliverList(delegate: SliverChildListDelegate([
              SizedBox(height: 20,),
              SeachBar(),
              SizedBox(height: 20,),
              Text('Popular Hotels',style: style.kPopTextStyle,),
              SizedBox(height: 5,),
              PopularHotel(),
              SizedBox(height: 20,),
             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text('Hotel Packages',style: style.kPopTextStyle,),
                 Text('View more',style: style.kViewTextStyle,)
               ],
             ),
              SizedBox(height: 10,),
              HotelPackage(),
            ]))
          ],

        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.purple,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.user),label: 'Explore'),

        ],
      ),
    );
  }
}

