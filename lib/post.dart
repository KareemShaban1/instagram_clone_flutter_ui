import 'package:flutter/material.dart';

class Post extends StatelessWidget {

  List<dynamic>posts=[
    {'image':'assets/images/img2.jpg','username':'creative 1','post':'new post 1','likes':100},
    {'image':'assets/images/img3.jpg','username':'creative 2','post':'new post 2','likes':150},
    {'image':'assets/images/img4.jpg','username':'creative 3','post':'new post 3','likes':100},
    {'image':'assets/images/img5.jpg','username':'creative 4','post':'new post 4','likes':20},
    {'image':'assets/images/img2.jpg','username':'creative 5','post':'new post 5','likes':200},
    {'image':'assets/images/img3.jpg','username':'creative 6','post':'new post 6','likes':160},
    {'image':'assets/images/img4.jpg','username':'creative 7','post':'new post 7','likes':10},
    {'image':'assets/images/img5.jpg','username':'creative 8','post':'new post 8','likes':170}
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
        itemBuilder: (context,index){
        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: CircleAvatar(
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('${posts[index]["image"]}'),
                      )
                    ),
                  ),
                  ),
                title: Text("${posts[index]["username"]}"),

                trailing: Icon(Icons.more_vert),

              ),

              Container(
                height: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("${posts[index]["image"]}")
                  )
                ),
              ),

              SizedBox(height: 10,),

              ListTile(
                leading: Wrap(children:[
                  Icon(Icons.favorite_border,color: Colors.black,size: 28,),
                  SizedBox(width: 20,),
                  Image.asset('assets/images/comment_icon.png',width: 20,height: 30,),
                  SizedBox(width: 20,),
                  Image.asset('assets/images/message_icon.png',width: 30,height: 25,color: Colors.black,),

                ]),
                trailing: Icon(Icons.bookmark_border_outlined,size: 28,color: Colors.black,),
              ),

              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text('${posts[index]["likes"]} Likes',style: TextStyle(
                  color: Colors.black
                ),),
              ),

              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text("${posts[index]["username"]}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Text("${posts[index]["post"]}"),
                  ],
                ),
              ),

              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text('View all 100 comments',style: TextStyle(color: Colors.grey),),
              ),

              SizedBox(height: 20,),
            ],
          ),
        );

        });
  }
}
