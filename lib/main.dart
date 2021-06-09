import 'package:ecom_ui/Screen1.dart';
import 'package:ecom_ui/Screen2.dart';
import 'package:ecom_ui/Screen3.dart';
import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Ecom App UI",
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: IconButton(
                icon: Icon(
                  Icons.notifications_active,
                  size: 24,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => ScreenOne()));
                  // Navigator.of(context).pushNamed('/Screen1');
                  // Navigator.pushReplacement(context,
                  //     MaterialPageRoute(builder: (context) => ScreenOne()));
                  // Navigator.pop(context);
                  Navigator.of(context)?.push(
                      MaterialPageRoute(builder: (context) => ScreenOne()));
                },
                child: Text(
                  "Screen 1",
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    onPrimary: Colors.white,
                    minimumSize: Size(150, 50)),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ScreenTwo()));
                },
                child: Text(
                  "Screen 2",
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    onPrimary: Colors.white,
                    minimumSize: Size(150, 50)),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Screen 3",
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      onPrimary: Colors.white,
                      minimumSize: Size(150, 50))),
            ],
          ),
        ),
      ),
    );
  }
}
