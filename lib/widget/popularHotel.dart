


import 'package:flutter/material.dart';
import 'package:hotel_booking/style.dart';

import '../dummyData.dart';

class  PopularHotel extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10,bottom: 5),
      height: MediaQuery.of(context).size.height*0.30,
      child: ListView.separated(padding: EdgeInsets.all(5),
        scrollDirection: Axis.horizontal,
          itemCount: PopHotel.length,
          itemBuilder: (context, int index){
            var data  = PopHotel[index];
        return  Container(
            width: MediaQuery.of(context).size.width*0.46,

            decoration: BoxDecoration(
              color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(2,3),
                    blurRadius: 2,
                    spreadRadius: 1
                  )
                ],
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.15,
                  width: MediaQuery.of(context).size.width*0.46,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(data['image']),fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                  ),
                ),
               Padding(
                 padding: EdgeInsets.only(left: 8.0),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     SizedBox(height: 5,),
                   Text(data['name'],style: style.kNameTextStyle,),
                     SizedBox(height: 5,),
                   Text(data['desc'],style: style.ksubTextStyle,maxLines: 2,),
                     SizedBox(height: 5,),
                   Padding(
                     padding: const EdgeInsets.only(right: 8.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text('\$${data['price']} / night',style: style.kPriceTextStyle,),
                         Text.rich(TextSpan(
                           children: [
                             TextSpan(text: '${data['rating']}',style: style.kPriceTextStyle),
                             WidgetSpan(child: Icon(Icons.star,color: Colors.purple,size: 18,))
                           ]
                         ))
                       ],
                     ),
                   )
                 ],),
               )
              ],
            ),

        );
      }, separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: 10,);
      },),
    );
  }
}
