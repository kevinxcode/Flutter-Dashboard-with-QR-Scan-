import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import '../web/bop.dart';
// import '../web/payslip.dart';
// import '../web/lms.dart';
// import '../web/kantin.dart';
import '../pre/lms_app_icons.dart' as custicon;
// import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:ptctapps/profile.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MaterialApp(
      home: Dashboard(),
      debugShowCheckedModeBanner: false,
    ));

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}


class _DashboardState extends State<Dashboard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Column(
        children: <Widget>[
          spacesection,
          autoPlayImage,
          titleSection,
          MenuApp(),
          spacesection,
          MenuApp2(),
          // spacesection,
          // spacesection,
        ],
      ),
    );
  }
}


// wiget title
Widget titleSection = Container(
  padding: const EdgeInsets.all(18),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /*2*/
            Container(
//              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                'PT. Citra Tubindo Tbk',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      /*3*/
    ],
  ),
);
// end widget

// menu 1
class MenuApp extends StatelessWidget{
  // MenuApp({this.title});
  // final Widget title;
  @override
  Widget build(BuildContext context){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // menu 1
          Container(
            width: 180.0,
            height: 120.0,
            child: RaisedButton(
              color: Color(0xff00091EA),
              child: Column(
                children: <Widget>[
                  Icon(Icons.assignment, size: 80.0),
                  Text('Bank of Point')
                ],
              ),
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => Profile()));
              },
              textColor: Colors.white,
              splashColor: Colors.grey,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            ),
          ),
          // end menu 1
          // menu my kantin
          Container(
            width: 180.0,
            height: 120.0,
            child: RaisedButton(
              color: Color(0xff00091EA),
              child: Column(
                children: <Widget>[
                  Icon(Icons.monetization_on, size: 80.0),
                  Text('E-Payslip')
                ],
              ),
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => Profile()));
              },
              textColor: Colors.white,
              splashColor: Colors.grey,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            ),
          ),
          // end menu my kantin
        ],
      ),
    );
  }
}
// end menu 1

// menu 2
class MenuApp2 extends StatelessWidget{
  // MenuApp2({this.title});
  // final Widget title;
  @override
  Widget build(BuildContext context){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // menu 1
          Container(
            width: 180.0,
            height: 120.0,
            child: RaisedButton(
              color: Color(0xff00091EA),
              child: Column(
                children: <Widget>[
                  Icon(Icons.free_breakfast, size: 80.0),
                  Text('My Kantin')
                ],
              ),
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => Profile()));
              },
              textColor: Colors.white,
              splashColor: Colors.grey,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            ),
          ),
          // end menu 1
          // menu my kantin
          Container(
            width: 180.0,
            height: 120.0,
            child: RaisedButton(
              color: Color(0xff00091EA),
              child: Column(
                children: <Widget>[
                  Icon(custicon.LmsApp.ss, size: 80.0),
                  Text('VU LMS')
                ],
              ),
              // onPressed: () {
              //   Navigator.push(context,
              //       new MaterialPageRoute(builder: (context) => MyHomePage()));
              // },
              onPressed: _LmsApp,
              textColor: Colors.white,
              splashColor: Colors.grey,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            ),
          ),
          // end menu my kantin
        ],
      ),
    );
  }
// end menu 2

  void   _LmsApp() async {
    const url = 'http://vallourec-university.csod.com/client/vallourec-university/default.aspx';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch';
    }
  }

}


// wiget title
Widget spacesection = Container(
  padding: const EdgeInsets.all(5),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /*2*/
          ],
        ),
      ),
      /*3*/
    ],
  ),
);
// end widget

// image crausel
final List<String> imageList = ["https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80",
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'];
// wiget title
//  final List<String> imageList = [
//   'image0.jpg',
//   'image1.jpg',
//   'image2.jpg',
//   'image3.jpg',
//   'image4.jpg'
// ];
Widget autoPlayImage = Container(
  margin: EdgeInsets.all(15),
  child: CarouselSlider.builder(
    itemCount: imageList.length,
    options: CarouselOptions(
      enlargeCenterPage: true,
      height: 140,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      reverse: false,
      aspectRatio: 5.0,
    ),
    itemBuilder: (context, i, id){
      //for onTap to redirect to another screen
      return GestureDetector(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.white,)
          ),
          //ClipRRect for image border radius
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              imageList[i],
              width: 500,
              fit: BoxFit.cover,
            ),
          ),
        ),
        onTap: (){
          var url = imageList[i];
          print(url.toString());
        },
      );
    },
  ),
);
// end widget
// end image crausel