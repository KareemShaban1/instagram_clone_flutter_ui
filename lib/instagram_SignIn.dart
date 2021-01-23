import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone_app/Animation/FadeAnimation.dart';
import 'package:instagram_clone_app/home.dart';
import 'package:instagram_clone_app/instagram_body.dart';

class InstagramSignIn extends StatefulWidget {
  @override
  _InstagramSignInState createState() => _InstagramSignInState();
}

class _InstagramSignInState extends State<InstagramSignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        leading: IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => InstagramBody()),),
        ),

      ),
      resizeToAvoidBottomPadding: false,
      body:SafeArea(
        child: Container(

          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,


          ),

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[


              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children:<Widget>[

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 50),


                        Text('Instagram',style: TextStyle(fontFamily: 'Billabong',color: Colors.black,fontSize: 60 ),),

                        SizedBox(height: 30,),


                        FadeAnimation(1.4, Container(
                          width: 300,


                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[

                              SizedBox(height: 20),

                              Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  // border: Border(bottom: BorderSide(color: Colors.grey[700]))
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10)

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Email Address or Phone number",
                                        hintStyle: TextStyle(color: Colors.grey,fontSize: 15),
                                        border: InputBorder.none,
                                        // icon: Icon(Icons.email,color: Colors.grey,)
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),


                              Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  // border: Border(bottom: BorderSide(color: Colors.grey[700]))
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10)

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        hintText: "Password",
                                        hintStyle: TextStyle(color: Colors.grey,fontSize: 15),
                                        border: InputBorder.none,
                                        // icon: Icon(Icons.lock,color: Colors.grey,)
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                        )),

                        SizedBox(height: 20,),

                      ],
                    ),

                  ]
              ),



              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [




                  FadeAnimation(1.6, Container(
                      height: 45,
                      width: 300,

                      // margin: EdgeInsets.symmetric(horizontal: 50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFFa5caf3)
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => Home()),);
                        },
                        child: Center(
                          child: Text("Log In", style: TextStyle(fontSize: 22,color: Colors.white, fontWeight: FontWeight.bold),),
                        ),
                      )
                  )),


                  SizedBox(height:20 ),

                  FadeAnimation(1.6,Text.rich(
                      TextSpan(
                          text: "Forgot your login details ? ",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,

                          ),
                          children: <InlineSpan>[

                            TextSpan(
                              text: 'Get help logging in.',
                              style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Color(0xFF0b3d6f)),
                              recognizer: TapGestureRecognizer()..onTap = () {
                                // Navigator.push(context,MaterialPageRoute(builder: (context) => TwitterSignIn()),);
                                // single tapped
                              },
                            ),
                          ]
                      )
                  ),),

                  SizedBox(height: 20,),




                  FadeAnimation(1.6,Text(
                    "OR",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16
                    ),
                  )),

                  SizedBox(height:20 ),




                  FadeAnimation(1.6, Container(

                      height: 45,
                      width: 300,

                      // margin: EdgeInsets.symmetric(horizontal: 50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFF0480dc)
                      ),
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.push(context,MaterialPageRoute(builder: (context) => FacebookSignUp()),);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Container(
                              child: SvgPicture.asset(
                                "assets/images/icons-facebook.svg",
                                height: 25,
                                width: 25,
                              ),
                            ),

                            SizedBox(width: 5,),

                            Center(
                              child: Text("Continue as @Creative", style: TextStyle(fontSize: 16,color: Colors.white, fontWeight: FontWeight.bold),),
                            ),

                          ],
                        ),

                      )
                  )),

                  SizedBox(height: 70,),


                  FadeAnimation(1.6,Text.rich(
                      TextSpan(
                          text: "Don't have an account ? ",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,

                          ),
                          children: <InlineSpan>[

                            TextSpan(
                              text: 'Sign Up',
                              style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xFF0b3d6f)),
                              recognizer: TapGestureRecognizer()..onTap = () {
                                // Navigator.push(context,MaterialPageRoute(builder: (context) => TwitterSignIn()),);
                                // single tapped
                              },
                            ),
                          ]
                      )
                  ),),

                ],
              )




            ],
          ),
        ),
      ),
    );
  }
}
