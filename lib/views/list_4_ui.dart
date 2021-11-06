import 'package:flutter/material.dart';
import 'package:flutter_app_thailand_hotline/models/hotlinedata.dart';
import 'package:flutter_app_thailand_hotline/views/show_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class List4UI extends StatefulWidget {
  const List4UI({Key? key}) : super(key: key);

  @override
  _List4UIState createState() => _List4UIState();
}

class _List4UIState extends State<List4UI> {
  List<HotlineData> hotlinedata = [
    HotlineData(name: "ธนาคารออมสิน", phone: "1115", image: "h28.jpg"),
    HotlineData(name: "ธนาคารกรุงเทพ", phone: "1333", image: "h29.jpg"),
    HotlineData(name: "ธนาคารกรุงไทย", phone: "1551", image: "h30.jpg"),
    HotlineData(name: "ธนาคารกรุงศรีอยุธยา", phone: "1572", image: "h31.png"),
    HotlineData(name: "ธนาคารทหารไทย", phone: "1558", image: "h32.jpg"),
    HotlineData(name: "ธนาคารซิตี้แบงก์", phone: "1588", image: "h33.jpg"),
    HotlineData(
        name: "ธนาคารสแตนดาร์ด ชาร์เตอร์ด", phone: "1595", image: "h34.jpg"),
    HotlineData(name: "ธนาคารธนชาติ", phone: "1770", image: "h35.jpg"),
    HotlineData(name: "ธนาคารกสิกรไทย", phone: "02-888-8888", image: "h36.jpg"),
    HotlineData(
        name: "ธนาคารซีไอเอ็มบี", phone: "02-626-7777", image: "h37.jpg"),
    HotlineData(
        name: "ธนาคารไทยพาณิชย์", phone: "02-777-7777", image: "h38.jpg"),
    HotlineData(
        name: "ธนาคารอาคารสงเคราะห์", phone: "02-645-9000", image: "h39.jpg"),
    HotlineData(
        name: "ธนาคารยูโอบี จำกัด (มหาชน)",
        phone: "02-285-1555",
        image: "h40.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
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
