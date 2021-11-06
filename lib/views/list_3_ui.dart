import 'package:flutter/material.dart';
import 'package:flutter_app_thailand_hotline/models/hotlinedata.dart';
import 'package:flutter_app_thailand_hotline/views/show_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class List3UI extends StatefulWidget {
  const List3UI({Key? key}) : super(key: key);

  @override
  _List3UIState createState() => _List3UIState();
}

class _List3UIState extends State<List3UI> {
  List<HotlineData> hotlinedata = [
    HotlineData(
      name: "ไปรษณีย์ไทย",
      phone: "1545",
      image: "h22.jpg",
    ),
    HotlineData(
      name: "ศูนย์รับแจ้งการเงินนอกระบบ",
      phone: "1359",
      image: "h23.jpg",
    ),
    HotlineData(
      name: "สายด่วน บขส.",
      phone: "1490",
      image: "h24.jpg",
    ),
    HotlineData(
      name: "สายด่วนประกันสังคม",
      phone: "1506",
      image: "h25.jfif",
    ),
    HotlineData(
      name: "รถไฟฟ้า BTS",
      phone: "02-617-6000",
      image: "h26.jpg",
    ),
    HotlineData(
      name: "รถไฟฟ้าใต้ดิน MRT",
      phone: "02-624-5200",
      image: "h27.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
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
