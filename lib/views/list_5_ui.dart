import 'package:flutter/material.dart';
import 'package:flutter_app_thailand_hotline/models/hotlinedata.dart';
import 'package:flutter_app_thailand_hotline/views/show_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class List5UI extends StatefulWidget {
  const List5UI({Key? key}) : super(key: key);

  @override
  _List5UIState createState() => _List5UIState();
}

class _List5UIState extends State<List5UI> {
  List<HotlineData> hotlinedata = [
    HotlineData(
      name: "DTAC",
      phone: "1678",
      image: "h41.png",
    ),
    HotlineData(
      name: "AIS",
      phone: "1175",
      image: "h42.jpg",
    ),
    HotlineData(
      name: "TRUE",
      phone: "1331",
      image: "h43.jpg",
    ),
    HotlineData(
      name: "TOT",
      phone: "1100",
      image: "h44.jpg",
    ),
    HotlineData(
      name: "3BB",
      phone: "1530",
      image: "h45.jfif",
    ),
    HotlineData(
      name: "CAT",
      phone: "1322",
      image: "h46.jpg",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
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
              ));},
      
      ),
    );
  }
}
