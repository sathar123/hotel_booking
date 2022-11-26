


import 'package:flutter/material.dart';

class SeachBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5),
     decoration: BoxDecoration(

       borderRadius: BorderRadius.circular(20),
         boxShadow: [
           BoxShadow(
               offset: const Offset(5, 8),
               color: Colors.grey[400]!,
               blurRadius: 3)
         ]
     ),
      child: TextField(
cursorColor: Colors.grey,
        decoration: InputDecoration(

       enabled: true,
          fillColor: Colors.white,
          filled: true,
          prefixIcon: Icon(Icons.search,color: Colors.grey,),
          hintText: 'Search for hotel',
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.white)
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.white)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.white)
          ),
        ),
      ),
    );
  }
}
