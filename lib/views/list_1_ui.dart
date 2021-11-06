import 'package:flutter/material.dart';
import 'package:flutter_app_thailand_hotline/models/hotlinedata.dart';
import 'package:flutter_app_thailand_hotline/views/show_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class List1UI extends StatefulWidget {
  const List1UI({Key? key}) : super(key: key);

  @override
  _List1UIState createState() => _List1UIState();
}

class _List1UIState extends State<List1UI> {
  List<HotlineData> hotlinedata = [
    HotlineData(name: "เหตุด่วน เหตุร้าย", phone: "191", image: "h1.jpg"),
    HotlineData(
        name: "ดับเพลิง สัตว์ร้ายเข้าบ้าน", phone: "199", image: "h2.jpg"),
    HotlineData(name: "กู้ชีพ วชิรพยาบาล", phone: "1154", image: "h3.jfif"),
    HotlineData(name: "จส.100", phone: "1137", image: "h4.jpg"),
    HotlineData(name: "ตำรวจท่องเที่ยว", phone: "1155", image: "h5.png"),
    HotlineData(name: "กรมทางหลวง", phone: "1586", image: "h6.jfif"),
    HotlineData(name: "กองปราบปราม", phone: "1195", image: "h7.jpg"),
    HotlineData(name: "แจ้งรถหาย", phone: "1192", image: "h8.jfif"),
    HotlineData(name: "ตำรวจทางหลวง", phone: "1193", image: "h9.png"),
    HotlineData(name: "กรมควบคุมมลพิษ", phone: "1650", image: "h10.jfif"),
    HotlineData(
        name: "หน่วยแพทย์ฉุกเฉิน ทั่วประเทศ", phone: "1669", image: "h11.jpg"),
    HotlineData(
        name: "หน่วยแพทย์ฉุกเฉิน กทม.", phone: "1646", image: "h12.jpg"),
    HotlineData(
        name: "กรมป้องกันและบรรเทาสาธารณภัย", phone: "1784", image: "h13.jfif"),
    HotlineData(name: "เหตุทางน้ำ กรมเจ้าท่า", phone: "1199", image: "h14.png"),
    HotlineData(
        name: "ศูนย์เตือนภัยพิบัติแห่งชาติ", phone: "192", image: "h15.jpg"),
    HotlineData(
        name: "การทางพิเศษแห่งประเทศไทย", phone: "1543", image: "h16.png"),
    HotlineData(name: "โรงพยาบาลตำรวจ", phone: "1691", image: "h17.jfif"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
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
