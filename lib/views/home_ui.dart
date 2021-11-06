import 'package:flutter/material.dart';
import 'package:flutter_app_thailand_hotline/views/list_1_ui.dart';
import 'package:flutter_app_thailand_hotline/views/list_2_ui.dart';
import 'package:flutter_app_thailand_hotline/views/list_3_ui.dart';
import 'package:flutter_app_thailand_hotline/views/list_4_ui.dart';
import 'package:flutter_app_thailand_hotline/views/list_5_ui.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  _HomeUIState createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[400],
        leading: Icon(Icons.phone_forwarded_outlined),
        title: Text(
          "สายด่วนประเทศไทย",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: DefaultTabController(
        length: 5,
        child: Column(
          children: [
            Container(
              color: Colors.redAccent[400],
              child: TabBar(
                labelColor: Colors.white,
                labelStyle: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
                isScrollable: true,
                unselectedLabelColor: Colors.redAccent[50],
                unselectedLabelStyle: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
                indicator: BoxDecoration(
                  color: Colors.red[800],
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(
                      20.0,
                    ),
                    topLeft: Radius.circular(
                      20.0,
                    ),
                  ),
                ),
                tabs: [
                  Tab(
                    text: "เหตุฉุกเฉิน",
                  ),
                  Tab(
                    text: "ไฟดับ/น้ำไม่ไหล",
                  ),
                  Tab(
                    text: "หน่วยงานต่างๆ",
                  ),
                  Tab(
                    text: "ธนาคาร",
                  ),
                  Tab(
                    text: "ผู้ให้บริการโทรศัพท์/อินเทอร์เน็ต",
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  List1UI(),
                  List2UI(),
                  List3UI(),
                  List4UI(),
                  List5UI(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
