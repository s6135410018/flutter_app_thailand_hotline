import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ShowUI extends StatefulWidget {
  String name = "";
  String phone = "";
  String image = "";
  ShowUI({
    Key? key,
    required this.name,
    required this.phone,
    required this.image,
  }) : super(key: key);

  @override
  _ShowUIState createState() => _ShowUIState();
}

class _ShowUIState extends State<ShowUI> {
  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent[700],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            FontAwesomeIcons.chevronCircleLeft,
            size: 40.0,
          ),
        ),
        title: Text(
          "รายละเอียด",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),
              Image.asset(
                "assets/images/" + widget.image,
                width: MediaQuery.of(context).size.width * 0.6,
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 50.0,
                child: Card(
                  color: Colors.tealAccent[400],
                  elevation: 10.0,
                  shadowColor: Colors.tealAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      15.0,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                      bottom: 10.0,
                    ),
                    child: Column(
                      children: [
                        Text(
                          "ชื่อ :  " + widget.name,
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Divider(
                          thickness: 3.0,
                          color: Colors.white,
                        ),
                        Text(
                          "เบอร์โทรศัพท์ :  " + widget.phone,
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  _makePhoneCall(
                    "tel: " + widget.phone,
                  );
                },
                icon: Icon(
                  Icons.phone,
                  color: Colors.greenAccent.shade700,
                ),
                label: Text(
                  "โทรเลย",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orangeAccent,
                  fixedSize: Size(
                    MediaQuery.of(context).size.width - 200,
                    50,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      50.0,
                    ),
                  ),
                  elevation: 10.0,
                  shadowColor: Colors.orangeAccent,
                  side: BorderSide(
                    width: 5.0,
                    color: Colors.orange.shade600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
