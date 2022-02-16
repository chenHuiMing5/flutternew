
import 'package:flutter/material.dart';
import 'HomePage.dart';

class TabBarBottomPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>TabBarBottomPageState();
}

class TabBarBottomPageState extends State<TabBarBottomPage>{
  int selectedIndex = 0;
  List<Widget> tabList = [
    HomePage(),
    Container(color: Colors.amber,),
    Container(color: Colors.green,),

  ];

  @override
  Widget build(BuildContext context) {
     return Scaffold(

       appBar: AppBar(
         title: Text("智慧城市"),
         ),
       body: tabList[selectedIndex] ,
       bottomNavigationBar:BottomNavigationBar(
          /// 这个很重要
         type: BottomNavigationBarType.fixed,
         currentIndex: selectedIndex,
         onTap: (index){
           setState(() {
             selectedIndex = index;
           });
         },
         items:<BottomNavigationBarItem> [
            BottomNavigationBarItem(
             icon: Icon(Icons.home),
             label: "首页"
            ),
            BottomNavigationBarItem(
             icon: Icon(Icons.school),
             label: "发现"
            ),
            BottomNavigationBarItem(
             icon: Icon(Icons.home),
             label: "我的"
            ),
         ]
         ) ,
     );
  }
}

 