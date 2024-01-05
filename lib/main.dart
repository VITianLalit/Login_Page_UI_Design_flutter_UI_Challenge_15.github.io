import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 30),
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.yellow.shade900,
                Colors.yellow.shade800,
                Colors.yellow.shade400,
              ]
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Login", style: TextStyle(color: Colors.white, fontSize: 40),),
                    SizedBox(height: 10,),
                    Text("Welcome Back", style: TextStyle(color: Colors.white, fontSize: 18),),
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(70), topRight: Radius.circular(70)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        children: [
                          SizedBox(height: 60,),
                          Container(
                            // padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(225, 95, 27, .3),
                                  blurRadius: 20,
                                  offset: Offset(0, 10),
                                )
                              ]
                            ),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey.shade200)),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Email or Phone",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 40,),
                          Text("Forgot Password?", style: TextStyle(color: Colors.grey),),
                          SizedBox(height: 40,),
                          Container(
                            height: 50,
                            margin: EdgeInsets.symmetric(horizontal: 50),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.orange.shade500,
                            ),
                            child: Center(
                              child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            ),
                          ),
                          SizedBox(height: 60,),
                          Text("Continue with social media", style: TextStyle(color: Colors.grey),),
                          SizedBox(height: 40,),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.blue,
                                  ),
                                  child: Center(
                                    child: Text("Facebook", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              ),
                              SizedBox(width: 30,),
                              Expanded(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.deepPurple,
                                  ),
                                  child: Center(
                                    child: Text("Github", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
              )
            ],
          ),
        ),
    );
  }
}
