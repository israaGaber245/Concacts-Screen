import 'package:contactsscreen/ItemAdded.dart';
import 'package:contactsscreen/TextFields.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget{
  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  TextEditingController _name=TextEditingController();

  TextEditingController _phone=TextEditingController();
  bool visible1 = false;
  bool visible2 = false;
  bool visible3 = false;
  String Name1='';
  String Name2='';
  String Name3='';
  String Phone1='';
  String Phone2='';
  String Phone3='';

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('ContactScreen'),
       centerTitle: true,
     ),
       backgroundColor:Color(0xFF9D9D9D),
     body: Container(
       margin: EdgeInsets.all(10),
       child: Column(
         children: [
           TextFields(Controller: _name, HintText: 'Enter your Name Here' , icon: Icons.edit),
           SizedBox(height: 10,),
           TextFields(Controller: _phone, HintText: 'Enter your Number Here' , icon: Icons.call),
           SizedBox(height: 20,),
           Row(
             children: [
               Expanded(
                 child: ElevatedButton(
                     onPressed: (){
                       Add();
                       setState(() {
                       });
                     },
                     child: Text('Add'),
                     style: ButtonStyle(shape: MaterialStateProperty.all(RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20.0))),)
                 ),
               ),
               SizedBox(width: 5,),
               Expanded(
                 child: ElevatedButton(
                     onPressed: (){
                       Delet();
                       setState(() {
                       });
                     },
                   child: Text('Delet'),
                   style: ButtonStyle(shape: MaterialStateProperty.all(RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(20.0))),backgroundColor: MaterialStateProperty.all(Colors.pink))),
               )
             ],
           ),
           SizedBox(height: 20,),
           ItemAdded(visible: visible1, Name: Name1, Phone: Phone1),
           SizedBox(height: 20,),
           ItemAdded(visible: visible2, Name: Name2, Phone: Phone2),
           SizedBox(height: 20,),
          ItemAdded(visible: visible3, Name: Name3, Phone: Phone3),
           SizedBox(height: 20,),
         ]),
     )

   );
  }
  int counter=0;
  Add(){
      if(counter==0){
        visible1=!visible1;
        Name1=_name.text;
        Phone1=_phone.text;
        counter++;
      }
      else if(counter==1){
        visible2=!visible2;
        Name2=_name.text;
        Phone2=_phone.text;
        counter++;
      }
      else if(counter==2){
        visible3=!visible3;
        Name3=_name.text;
        Phone3=_phone.text;
        counter++;
      }

  }
  Delet(){
    if(counter==3){
      visible3=!visible3;
      counter=2;
    }
    else if(counter==2){
      visible2=!visible2;
      counter=1;
    }
    else if(counter==1){
      visible1=!visible1;
      counter=0;
    }
  }
}
