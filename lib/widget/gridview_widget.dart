import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_tux/screen/Elibrary/Elibrary.dart';
import 'package:flutter_application_tux/screen/Projects/Projects.dart';

class gridview extends StatelessWidget {
  const gridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: GridView.count(
        crossAxisCount: 3,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Projectscreen(),
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Center(
                  child: Column(
                    children: [
                      Image.asset('lib/img/project.png'),
                      Text(
                        'Project',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(106, 106),
                textStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                ),
                primary: Color(0xffF8F8F8),
                onPrimary: Color(0xff33A1ED),
                elevation: 3,
                side: BorderSide(width: 1, color: Colors.grey.shade300),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Center(
                  child: Column(
                    children: [
                      Image.asset('lib/img/video.png'),
                      Text(
                        'Record',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(106, 106),
                textStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                ),
                primary: Color(0xffF8F8F8),
                onPrimary: Color(0xff33A1ED),
                elevation: 3,
                side: BorderSide(width: 1, color: Colors.grey.shade300),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Center(
                  child: Column(
                    children: [
                      Image.asset('lib/img/attendance.png'),
                      Text(
                        'Attendance',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontSize: 14),
                      )
                    ],
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(106, 106),
                textStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                ),
                primary: Color(0xffF8F8F8),
                onPrimary: Color(0xff33A1ED),
                elevation: 3,
                side: BorderSide(width: 1, color: Colors.grey.shade300),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Elibrary_screen(),
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Center(
                  child: Column(
                    children: [
                      Image.asset('lib/img/Elibary.png'),
                      Text(
                        'E-Library',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(106, 106),
                textStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                ),
                primary: Color(0xffF8F8F8),
                onPrimary: Color(0xff33A1ED),
                elevation: 3,
                side: BorderSide(width: 1, color: Colors.grey.shade300),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Center(
                  child: Column(
                    children: [
                      Image.asset('lib/img/Tuitionfee.png'),
                      Text(
                        'Tuition Fee',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(106, 106),
                textStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                ),
                primary: Color(0xffF8F8F8),
                onPrimary: Color(0xff33A1ED),
                elevation: 3,
                side: BorderSide(width: 1, color: Colors.grey.shade300),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Center(
                  child: Column(
                    children: [
                      Image.asset('lib/img/tgipoint.png'),
                      Text(
                        'TGI Points',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(106, 106),
                textStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                ),
                primary: Color(0xffF8F8F8),
                onPrimary: Color(0xff33A1ED),
                elevation: 3,
                side: BorderSide(width: 1, color: Colors.grey.shade300),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Center(
                  child: Column(
                    children: [
                      Image.asset('lib/img/time.png'),
                      Text(
                        'Timetable',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(106, 106),
                textStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                ),
                primary: Color(0xffF8F8F8),
                onPrimary: Color(0xff33A1ED),
                elevation: 3,
                side: BorderSide(width: 1, color: Colors.grey.shade300),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
                child: Center(
                  child: Column(
                    children: [
                      Image.asset('lib/img/new.png'),
                      Text(
                        'News',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(106, 106),
                textStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                ),
                primary: Color(0xffF8F8F8),
                onPrimary: Color(0xff33A1ED),
                elevation: 3,
                side: BorderSide(width: 1, color: Colors.grey.shade300),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Center(
                  child: Column(
                    children: [
                      Image.asset('lib/img/internship.png'),
                      Text(
                        'Intership',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(106, 106),
                textStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                ),
                primary: Color(0xffF8F8F8),
                onPrimary: Color(0xff33A1ED),
                elevation: 3,
                side: BorderSide(width: 1, color: Colors.grey.shade300),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
