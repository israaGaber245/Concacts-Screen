import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemAdded extends StatelessWidget{
  bool visible;
  String Name;
  String Phone;
  ItemAdded({required this.visible, required this.Name, required this.Phone});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Visibility(
          visible:visible,
          child:OutlinedButton(onPressed: (){},
            style: OutlinedButton.styleFrom(side: BorderSide(width: 2.0, color: Colors.white),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),),backgroundColor: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Name: ${Name}',style: TextStyle(color: Colors.black),),
                Text('Phone: ${Phone}',style: TextStyle(color: Colors.black)),
                SizedBox(height: 15,)
              ],
            ),
          ) ),
    );
  }

}