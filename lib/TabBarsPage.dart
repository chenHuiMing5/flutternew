
import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'NestedTabBarView1.dart';
import 'MinePage.dart';
class TabBarsPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>TabBarsPageState();
}

class TabBarsPageState extends State<TabBarsPage>{
  int selectedIndex = 0;
  List<Widget> tabList = [
    HomePage(),
    NestedTabBarView1(),
    VideoScreen(),

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

 