import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget buildlistTile(String title,IconData icon,Function tapHandler)
  {return ListTile(
          leading:Icon(icon, size:26,) ,
          title: Text(title),
          onTap:(){
            tapHandler();
          }
        );
  }   
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: <Widget>[
        Container(
          height: 75,
          width:double.infinity,
          padding :EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          color: Colors.blue[900],
          child: Text('Sections',style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.w500 ,
          )
          )

        ),
        SizedBox(height: 20,),
        buildlistTile(
          'Home Page',
          Icons.home,
          (){
            Navigator.of(context).pushNamed('calender');
          }
        ),
        buildlistTile(
          'Section A',
          Icons.people_outline,
          (){
            Navigator.of(context).pushNamed('mainpage');
          }
        ),
        buildlistTile(
          'Section B',
          Icons.people_outline,
          (){
            Navigator.of(context).pushNamed('mainpage');
          }
        ),
        buildlistTile(
          'Section C',
          Icons.people_outline,
          (){
            Navigator.of(context).pushNamed('mainpage');
          }
        ),
        buildlistTile(
          'Section D',
          Icons.people_outline,
          (){
            Navigator.of(context).pushNamed('mainpage');
          }
        ),
        buildlistTile(
          'Section E',
          Icons.people_outline,
          (){
            Navigator.of(context).pushNamed('mainpage');
          }
        ),   

      ],
      
      ),
      
    );
  }
}