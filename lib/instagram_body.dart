import 'package:flutter/material.dart';
import 'package:instagram_clone_app/Animation/FadeAnimation.dart';
import 'package:instagram_clone_app/instagram_SignIn.dart';
import 'package:instagram_clone_app/instagram_SignUp.dart';

class InstagramBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Scaffold(

      body:Container(

        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white

        ),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            SizedBox(height: 160),

            Text('Instagram',style: TextStyle(
              fontFamily: 'Billabong',
                color: Colors.black,
                fontSize: 60,

                // fontFamily:'Roboto'
            ),),



            SizedBox(height: 150),




            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children:<Widget>[

                  Column(
                    children: [

                      FadeAnimation(1.6, Container(
                          height: 50,
                          width: 300,

                          // margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.black
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) => InstagramSignUp()),);
                            },
                            child: Center(
                              child: Text("Sign Up", style: TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold),),
                            ),
                          )
                      )),

                      SizedBox(height:20 ,),

                      FadeAnimation(1.6, Container(
                          height: 50,
                          width: 300,

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),

                            color: Colors.black
                          ),

                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) => InstagramSignIn()),);
                            },
                            child: Center(
                              child: Text("Sign In", style: TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold),),
                            ),
                          )
                      )),

                    ],
                  )


                ]
            ),


          ],
        ),
      ),

    );
  }
}
