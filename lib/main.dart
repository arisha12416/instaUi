import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login page ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String choosenValue = 'English';
  bool notNullText = false;
  List itemList = ['English', 'Arabic', 'Italian', 'French'];
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  int btnColor = 0xff26A9ff;
  @override
  Widget build(BuildContext context) {
    double customWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height - 90,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: customWidth,
              alignment: Alignment.topCenter,
              child: DropdownButton(
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 24,
                elevation: 10,
                dropdownColor: Colors.white70,
                style: TextStyle(color: Colors.black54),
                underline: Container(),
                value: choosenValue,
                onChanged: (newValue) {
                  setState(() {
                    choosenValue = newValue;
                  });
                },
                items: itemList.map((valueItem) {
                  return DropdownMenuItem(
                    child: Text(
                      valueItem,
                      style: TextStyle(fontSize: 16),
                    ),
                    value: valueItem,
                  );
                }).toList(),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4QsdmFQyAw0A28Zo3y5CcPYNA5yD7Y4GaLA&usqp=CAU'),
                  height: customWidth * .20,
                ),
                SizedBox(
                  height: customWidth * .05,
                ),
                Container(
                    height: customWidth * .14,
                    width: customWidth * .90,
                    decoration: BoxDecoration(
                      color: Color(0xffE8E8E8),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Center(
                        child: TextField(
                          onChanged: (text) {
                            setState(() {
                              if (nameController.text.length >= 2 &&
                                  passwordController.text.length >= 2) {
                                notNullText = true;
                              } else {
                                notNullText = false;
                              }
                            });
                          },
                          controller: nameController,
                          style: TextStyle(fontSize: 16),
                          decoration: InputDecoration.collapsed(
                              hintText: 'Phone number , email or username '),
                        ),
                      ),
                    )),
                SizedBox(
                  height: customWidth * .05,
                ),
                Container(
                    height: customWidth * .14,
                    width: customWidth * .90,
                    decoration: BoxDecoration(
                      color: Color(0xffE8E8E8),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Center(
                        child: TextField(
                          onChanged: (text) {
                            setState(() {
                              if (nameController.text.length >= 2 &&
                                  passwordController.text.length >= 2) {
                                notNullText = true;
                              } else {
                                notNullText = false;
                              }
                            });
                          },
                          controller: passwordController,
                          obscureText: true,
                          style: TextStyle(fontSize: 16),
                          decoration:
                              InputDecoration.collapsed(hintText: 'Password'),
                        ),
                      ),
                    )),
                SizedBox(
                  height: customWidth * .04,
                ),
                notNullText
                    ? GestureDetector(
                        onLongPressStart: (_) {
                          setState(() {
                            btnColor = 0xff78C9ff;
                          });
                        },
                        onLongPressEnd: (_) {
                          setState(() {
                            btnColor = 0xff26A9ff;
                          });
                        },
                        child: Container(
                          height: customWidth * .14,
                          width: customWidth * .90,
                          decoration: BoxDecoration(
                            color: Color(btnColor),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Center(
                            child: Text(
                              'Log In',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: customWidth * .040,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ))
                    : Container(
                        width: customWidth * .90,
                        height: customWidth * .14,
                        decoration: BoxDecoration(
                          color: Color(0xff78C9FF),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Center(
                          child: Text(
                            'Log In',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: customWidth * .040,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                SizedBox(
                  height: customWidth * .035,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'Forgot your login details ?',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: () => print('Get Help'),
                    child: Text(
                      'Get help',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ]),
                SizedBox(
                  height: customWidth * .04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1,
                      color: Colors.grey,
                      width: customWidth * 0.40,
                    ),
                    Text(
                      'OR',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 1,
                      color: Colors.grey,
                      width: customWidth * 0.40,
                    ),
                  ],
                ),
                SizedBox(
                  height: customWidth * 0.06,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    child: Image.network(
                        'https://facebookbrand.com/wp-content/uploads/2019/04/f_logo_RGB-Hex-Blue_512.png?w=512&h=512'),
                    height: customWidth * .060,
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Login with facebook',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  )
                ])
              ],
            ),
            Container(
                width: customWidth,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: customWidth,
                      height: 1,
                      color: Color(0xffA2A2A2),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(
                            fontSize: customWidth * .040,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            print('Sing up');
                          },
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              color: Color(0xff00258B),
                              fontSize: customWidth * .040,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    )));
  }
}
