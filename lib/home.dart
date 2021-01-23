import 'package:flutter/material.dart';
import 'package:instagram_clone_app/bottom_bar.dart';
import 'package:instagram_clone_app/post.dart';
import 'package:instagram_clone_app/story.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text('Instagram',style: TextStyle(fontFamily: 'Billabong',fontSize: 30,fontWeight: FontWeight.bold),),
        ),
        titleSpacing: 3,
        actions: [
          IconButton(

              icon: Icon(Icons.add_box_outlined,color: Colors.black,),
              iconSize: 30,
              onPressed: null
          ),
          IconButton(
              icon: Icon(Icons.favorite_border,color: Colors.black,),
              iconSize: 30,
              onPressed: null
          ),
          IconButton(
              icon: Image.asset('assets/images/message_icon.png',color: Colors.black,),
              iconSize: 20,
              onPressed: null
          )

        ],

      ),

      body:
      Column(
        children: [
          Story(),
          Divider(color: Colors.grey,),
          Expanded(child:Post() )

        ],
      ),


      bottomNavigationBar: BottomBar()
    );
  }
}
