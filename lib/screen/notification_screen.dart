import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_tux/screen/dashboard.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(0),
          child: Container(
            child: IconButton(
              splashRadius: 25,
              onPressed: () {
                Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => dashboard(),
                    ));
              },
              icon: Image.asset('lib/img/backicon.png'),
            ),
          ),
        ),
        title: Text(
          'Notifications',
          style: TextStyle(
              fontFamily: 'Montserrat', fontSize: 25, color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 220),
            child: Text(
              '13, November 2022',
              style: TextStyle(
                  fontFamily: 'Montserrat2', fontSize: 12, color: Colors.black),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              width: 350,
              height: 130,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 233, 233),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Image.asset('lib/img/camera.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 20),
                        child: Text(
                          'New video have been upload ',
                          style: TextStyle(
                              fontFamily: 'Montserrat3',
                              fontSize: 12,
                              color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Text(
                          '11:00 am',
                          style: TextStyle(
                            fontFamily: 'Montserrat2',
                            fontSize: 12,
                            color: Color(0xff7E7B7B),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Image.asset('lib/img/file.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                          top: 20,
                        ),
                        child: Text(
                          'New Project assigned by:.........  ',
                          style: TextStyle(
                              fontFamily: 'Montserrat3',
                              fontSize: 12,
                              color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 20),
                        child: Text(
                          '2:00 pm',
                          style: TextStyle(
                            fontFamily: 'Montserrat2',
                            fontSize: 12,
                            color: Color(0xff7E7B7B),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 220),
            child: Text(
              '12, November 2022',
              style: TextStyle(
                  fontFamily: 'Montserrat2', fontSize: 12, color: Colors.black),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 70,
            width: 340,
            decoration: BoxDecoration(
              color: Color(0xffF8F8F8),
              border: Border.all(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 5),
                  child: Image.asset('lib/img/bear.png'),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 15),
                      child: Text(
                        'You have +1 Daily Streak in',
                        style:
                            TextStyle(fontFamily: 'Montserrat2', fontSize: 12),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 4),
                      child: Text(
                        'E-Library',
                        style:
                            TextStyle(fontFamily: 'Montserrat2', fontSize: 12),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45, top: 0),
                  child: Text(
                    '12:00 am',
                    style: TextStyle(
                        fontFamily: 'Montserrat2',
                        fontSize: 12,
                        color: Colors.grey[500]),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
