import 'package:flutter/material.dart';
import '../models/attenmodel.dart'; 
import '../widgets/secdrawer.dart';

class  MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Teacher> studList =[  
    
    Teacher(
      usnno: '1DS18CS001',
      studname: 'ABC',
      ispresent: true,
    ),
    Teacher(
      usnno: '1DS18CS002',
      studname: 'NOP',
      ispresent: true,
    ),
    Teacher(
      usnno: '1DS18CS003',
      studname: 'MNO',
      ispresent: true,
      
    ),
    Teacher(
      usnno: '1DS18CS004',
      studname: 'LMN',
      ispresent: true,
    ),
    Teacher(
      usnno: '1DS18CS005',
      studname: 'KLM',
      ispresent: true,
    ),
    Teacher(
      usnno: '1DS18CS006',
      studname: 'JKL',
      ispresent: true,
    ),
    Teacher(
      usnno: '1DS18CS007',
      studname: 'IJK',
      ispresent: true,
    ),
    Teacher(
      usnno: '1DS18CS008',
      studname: 'HIJ',
      ispresent: true,
    ),
    Teacher(
      usnno: '1DS18CS009',
      studname: 'GHI',
      ispresent: true,
    ),
    Teacher(
      usnno: '1DS18CS010',
      studname: 'FGH',
      ispresent: true,
    ),
    Teacher(
      usnno: '1DS18CS011',
      studname: 'EFG',
      ispresent: true,
    ),
    Teacher(
      usnno: '1DS18CS012',
      studname: 'DEF',
      ispresent: true,
    ),
    Teacher(
      usnno: '1DS18CS013',
      studname: 'CDE',
      ispresent: true,
    ),
    Teacher(
      usnno: '1DS18CS014',
      studname: 'DEF',
      ispresent: true,
    ),
    Teacher(
      usnno: '1DS18CS015',
      studname: 'BCD',
      ispresent: true,
    ),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
     appBar:AppBar(
        title: Text('Attendance Page'),
        actions: <Widget>[
          IconButton(//to save work after taking attendance
            icon: Icon(
            Icons.save,
            color: Colors.white,
            
          ),
            onPressed: () {
              Navigator.of(context).pushNamed('calender');
            },
         )
        ],
      ),
      drawer: MainDrawer(),
      body:
        ListView.builder(
        padding: const EdgeInsets.all(20.0),
        itemCount: studList.length,
        itemBuilder: (ctx,i){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical:2.0),
            child: Card(
              child:ListTile(
                title: Text(studList[i].usnno),
                subtitle: Text(studList[i].studname),
                leading: CircleAvatar(
                  maxRadius: 30,
                  backgroundImage: AssetImage('assets/userface.png'),
                ),
                trailing: Switch(
                  activeColor: Colors.green[400],
                  inactiveThumbColor: Colors.red,
                  hoverColor: Colors.grey,
                  
                  value: studList[i].ispresent,
                  onChanged: (newValue){
                    setState(() {
                      studList[i].ispresent = newValue;
                    });
                  }
                )
              )
            ),
          );
        }      
      ),    
   );
  }
}