import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_tux/screen/notification_screen.dart';

import 'package:flutter_application_tux/widget/gridview_widget.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Image.asset('lib/img/menu.png'),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Container(
              height: 50,
              width: 50,
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: IconButton(
                splashRadius: 20,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => notification(),
                      ));
                },
                icon: Image.asset('lib/img/notificat.png'),
              ),
            ),
          )
        ],
      ),
      drawer: Drawer(
        width: 330,
        elevation: 0,
        child: Container(
          child: ListView(
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Container(
                            width: 90,
                            height: 91,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('lib/img/cha.jpeg'),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                            ),
                            //child: Image.asset('lib/img/cha.jpeg'),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 10),
                              child: Text(
                                'Eth Kimchhay',
                                style: TextStyle(
                                  fontFamily: 'Montserrat2',
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'Student ID: 20856',
                                style: TextStyle(
                                  fontFamily: 'Montserrat4',
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Image.asset('lib/img/line 4.png'),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Image.asset('lib/img/TGipartner.png'),
                title: Text(
                  'TGI Partners',
                  style: TextStyle(
                    fontFamily: 'Montserrat4',
                    fontSize: 15,
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Image.asset('lib/img/academic.png'),
                title: Text(
                  'Academic',
                  style: TextStyle(
                    fontFamily: 'Montserrat4',
                    fontSize: 15,
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Image.asset('lib/img/studentclub.png'),
                title: Text(
                  'Student Clubs',
                  style: TextStyle(
                    fontFamily: 'Montserrat4',
                    fontSize: 15,
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Image.asset('lib/img/location.png'),
                title: Text(
                  'Location',
                  style: TextStyle(
                    fontFamily: 'Montserrat4',
                    fontSize: 15,
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Image.asset('lib/img/call.png'),
                title: Text(
                  'Contacts',
                  style: TextStyle(
                    fontFamily: 'Montserrat4',
                    fontSize: 15,
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Image.asset('lib/img/term.png'),
                title: Text(
                  'Term and Condition',
                  style: TextStyle(
                    fontFamily: 'Montserrat4',
                    fontSize: 15,
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Image.asset('lib/img/setting.png'),
                title: Text(
                  'Setting',
                  style: TextStyle(
                    fontFamily: 'Montserrat4',
                    fontSize: 15,
                  ),
                ),
                onTap: () {},
              ),
              Padding(
                padding: const EdgeInsets.only(top: 160),
                child: Image.asset('lib/img/line 4.png'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 30),
                    child: Text(
                      'V 1.1.0',
                      style: TextStyle(
                        fontFamily: 'Montserrat4',
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, top: 30),
                    child: Text(
                      '@2023',
                      style: TextStyle(
                        fontFamily: 'Montserrat4',
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(right: 200),
            child: Text(
              'Ongoing Class',
              style: TextStyle(fontFamily: 'Montserrat3', fontSize: 25),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child: Center(
              child: Container(
                width: 380,
                height: 160,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(-5, 8),
                      blurRadius: 17,
                      color: Color.fromARGB(255, 0, 0, 0),
                      spreadRadius: -20,
                    )
                  ],
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue.shade600,
                      Colors.lightBlue.shade300,
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 18, left: 18),
                          width: 65,
                          height: 65,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Column(
                              children: [
                                Text(
                                  'Sat',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat4',
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  '12',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat3',
                                    fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 15),
                              child: Text(
                                'Saturday 8:00 am || MS Team',
                                style: TextStyle(
                                    fontFamily: 'Montserrat2',
                                    fontSize: 16,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 160,
                              height: 30,
                              margin: EdgeInsets.only(right: 60),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 225, 133),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'UX/UI Design Class',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat2', fontSize: 15),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin:
                                  EdgeInsets.only(right: 45, top: 15, left: 15),
                              child: Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    width: 40,
                                    height: 40,
                                    child: Image.asset('lib/img/Group 6.png'),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 35),
                                    width: 40,
                                    height: 40,
                                    child: Image.asset('lib/img/Group 7.png'),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 55),
                                    width: 40,
                                    height: 40,
                                    child: Image.asset('lib/img/Group 8.png'),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 75),
                                    width: 40,
                                    height: 40,
                                    child: Image.asset('lib/img/Group 9.png'),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 100),
                                    width: 40,
                                    height: 40,
                                    child: Image.asset('lib/img/Group 10.png'),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 15),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(-5, 8),
                                    blurRadius: 17,
                                    color: Color.fromARGB(255, 117, 117, 117),
                                    spreadRadius: -20,
                                  ),
                                ],
                              ),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text('Join Class'),
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(124, 44),
                                  textStyle: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                  ),
                                  primary: Colors.indigoAccent[700],
                                  onPrimary: Colors.white,
                                  elevation: 12,
                                  shadowColor: Colors.black87,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: gridview(),
              ),
            ),
          ),
          Container(
            width: 500,
            height: 110,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff0575E6),
                  Color(0xff68CCEC),
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
            child: Center(
              child: Text(
                'TGI Hotline',
                style: TextStyle(
                    fontFamily: 'Montserrat3',
                    fontSize: 30,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
