

import 'package:flutter/material.dart';
import 'package:hotel_booking/style.dart';
import 'package:hotel_booking/widget/userphoto.dart';

class MyAppbar extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
    backgroundColor: Colors.transparent,
      title: Wrap(direction: Axis.vertical,
      children: [
        Text('Hello @Sathar',style: style.kUserTextStyle,),
        Text('Find your favourite hotel',style: style.kFindTextStyle,)
      ],
      ),
      actions: [

        Padding(
          padding: const EdgeInsets.all(10.0),
          child: UserPhoto(),
        ),
      ],
    );
  }
}
