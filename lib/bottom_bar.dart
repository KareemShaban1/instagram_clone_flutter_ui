import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: BottomNavigationBar(
        selectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 35,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),

          BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.black,),label: 'search'),

          BottomNavigationBarItem(icon: Image.asset('assets/images/instagram-reels.png',width: 25,),label: ''),

          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined,color: Colors.black,),label: ''),

          BottomNavigationBarItem(icon: CircleAvatar(backgroundImage: AssetImage('assets/images/img3.jpg'),
          ),label: 'user'),


        ],

      ),
    );
  }
}
