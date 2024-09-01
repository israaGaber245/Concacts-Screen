import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFields extends StatelessWidget{
  TextEditingController Controller;
  String HintText;
  IconData icon;
  TextFields({required this.Controller, required this.HintText, required this.icon});
  @override
  Widget build(BuildContext context) {
    return  OutlinedButton(
        onPressed: (){},
        style: OutlinedButton.styleFrom(side: BorderSide(width: 2.0, color: Colors.white),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),),backgroundColor: Colors.white),
        child:TextField(
          controller: Controller,
          decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.black),
              hintText: HintText,
              border: InputBorder.none,
              suffixIcon:Icon(icon,color: Colors.blue,)

          ),
        )
    );
  }

}