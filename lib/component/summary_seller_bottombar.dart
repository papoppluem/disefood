

import 'package:disefood/screen_seller//order_seller_page.dart';
import 'package:disefood/screen_seller//organize_seller_page.dart';
import 'package:flutter/material.dart';
import 'package:disefood/component/sidemenu_seller.dart';



class SummarySeller extends StatefulWidget {

  @override
  _SummarySellerState createState() => _SummarySellerState();
}

class _SummarySellerState extends State<SummarySeller> {
  int selectIndex = 3;
  final widgetOptions = [
    OrderSellerPage(),
    OrganizeSellerPage(),
    Text('Feed back'),
    Text('Summary'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenuSeller(),
      body: Center(
        child: widgetOptions.elementAt(selectIndex),
      ),
      bottomNavigationBar:  BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.orange,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        iconSize: 28,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.fastfood,color: Colors.white,),title: Text('Order',style: TextStyle(color: Colors.white),),),
          BottomNavigationBarItem(icon: Icon(Icons.settings,color: Colors.white,),title: Text('Organize',style: TextStyle(color: Colors.white),),),
          BottomNavigationBarItem(icon: Icon(Icons.rate_review,color: Colors.white,),title: Text('Feedback',style: TextStyle(color: Colors.white),),),
          BottomNavigationBarItem(icon: Icon(Icons.equalizer,color: Colors.white,),title: Text('Summary',style: TextStyle(color: Colors.white),),),
        ],
        currentIndex: selectIndex,

        onTap: onItemTapped,
      ),
    );
  }

  void onItemTapped(int index){
    setState((){
      selectIndex = index;
    }
    );
  }
}






