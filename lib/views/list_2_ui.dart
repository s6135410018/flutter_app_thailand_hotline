import 'package:flutter/material.dart';
import 'package:flutter_app_thailand_hotline/models/hotlinedata.dart';
import 'package:flutter_app_thailand_hotline/views/show_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class List2UI extends StatefulWidget {
  const List2UI({Key? key}) : super(key: key);

  @override
  _List2UIState createState() => _List2UIState();
}

class _List2UIState extends State<List2UI> {
  List<HotlineData> hotlinedata = [
    HotlineData(
      name: "การไฟฟ้านครหลวง",
      phone: "1130",
      image: "h18.png",
    ),
    HotlineData(
      name: "การไฟฟ้าส่วนภูมิภาค",
      phone: "1129",
      image: "h19.jpg",
    ),
    HotlineData(
      name: "การประปานครหลวง",
      phone: "1125",
      image: "h20.jpg",
    ),
    HotlineData(
      name: "การประปาส่วนภูมิภาค",
      phone: "1662",
      image: "h21.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(
            height: 10.0,
            color: Colors.grey,
          );
        },
        itemCount: hotlinedata.length,
        itemBuilder: (context, index) {
          return ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ShowUI(
                        name: hotlinedata[index].name,
                        phone: hotlinedata[index].phone,
                        image: hotlinedata[index].image,
                      );
                    },
                  ),
                );
              },
              title: Text(
                hotlinedata[index].name,
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 18.0,
                ),
              ),
              subtitle: Text(
                hotlinedata[index].phone,
              ),
              leading: Image.asset(
                "assets/images/" + hotlinedata[index].image,
                width: 80.0,
              ),
              trailing: Icon(
                FontAwesomeIcons.chevronCircleRight,
                size: 40.0,
                color: Colors.redAccent[400],
              ));
        },
      ),
    );
  }
}
