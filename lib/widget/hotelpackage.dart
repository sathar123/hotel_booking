import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotel_booking/dummyData.dart';
import 'package:hotel_booking/style.dart';

class HotelPackage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: ScrollPhysics(),
        padding: EdgeInsets.only(top: 10),
        shrinkWrap: true,
        itemBuilder: (context, int index) {
          var data = PopHotel[index];
          return Container(
            margin: EdgeInsets.only(right: 5),
            width: MediaQuery.of(context).size.width * 0.8,
            height: 120,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(2, 3),
                      blurRadius: 2,
                      spreadRadius: 1)
                ],
                borderRadius: BorderRadius.circular(10)),
            child: Stack(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)),
                              image: DecorationImage(
                                  image: NetworkImage(data['image']),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 2,),
                        Text(
                          data['name'],
                          style: style.kNameTextStyle,
                        ),
                        Text(
                          data['desc'],
                          style: style.ksubTextStyle,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                        ),
                        Text(
                          '\$${data['price']} / night',
                          style: style.kPriceTextStyle,
                        ),
                        Wrap(
                          spacing: 10,
                          children: [
                            Icon(
                              FontAwesomeIcons.car,
                              color: Colors.purple,
                            ),
                            Icon(
                              Icons.radio,
                              color: Colors.purple,
                            ),
                            Icon(
                              FontAwesomeIcons.wineGlass,
                              color: Colors.purple,
                            ),
                            Icon(
                              Icons.wifi,
                              color: Colors.purple,
                            ),
                          ],
                        ),
                        SizedBox(height: 2,)
                      ],
                    )
                  ],
                ),

                Positioned(
                  right: 0,
                  top: 55,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: style.bookcolor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10))),
                    child: Text(
                      'Book',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            )


          );
        },
        separatorBuilder: (context, int index) {
          return SizedBox(
            height: 10,
          );
        },
        itemCount: PopHotel.length);
  }
}
