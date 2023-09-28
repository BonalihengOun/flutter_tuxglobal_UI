import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_tux/screen/dashboard.dart';
import 'package:flutter_application_tux/widget/linearpercent.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Projectscreen extends StatefulWidget {
  const Projectscreen({super.key});

  @override
  State<Projectscreen> createState() => _ProjectscreenState();
}

class _ProjectscreenState extends State<Projectscreen> {
  bool? ischecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar,
      body: _buildBody,
    );
  }

  AppBar get _buildAppBar {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => dashboard(),
              ));
        },
        icon: Image.asset('lib/img/backicon.png'),
      ),
      title: Text(
        'Project',
        style: TextStyle(
            fontFamily: 'Montserrat', fontSize: 30, color: Colors.black),
      ),
    );
  }

  Widget get _buildBody {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        _buildboxfile,
        _buildboxfile1,
        _buildSubmit,
      ],
    );
  }

  Widget get _buildboxfile {
    return Center(
      child: Container(
        width: 360,
        height: 70,
        decoration: BoxDecoration(
          color: Color(0xffF8F8F8),
          border: Border.all(width: 1, color: Color.fromARGB(255, 59, 59, 59)),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('lib/img/plus.png'),
            SizedBox(
              width: 10,
            ),
            Text(
              'Add File',
              style: TextStyle(
                  fontFamily: 'Montserrat', fontSize: 17, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  Widget get _buildboxfile1 {
    return Center(
      child: Container(
        width: 360,
        height: 300,
        decoration: BoxDecoration(
          color: Color(0xffF8F8F8),
          border: Border.all(width: 1, color: Color.fromARGB(255, 0, 0, 0)),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20, top: 15),
                  child: Image.asset('lib/img/pdf.png'),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Week3_Group3_project.pdf',
                      style: TextStyle(fontFamily: 'Montserrat2', fontSize: 15),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Size: 1 mb',
                      style: TextStyle(
                          fontFamily: 'Montserrat2',
                          fontSize: 15,
                          color: Colors.grey[500]),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Checkbox(
                      value: ischecked,
                      activeColor: Color.fromARGB(255, 0, 193, 0),
                      onChanged: (value) {
                        print(value);
                        setState(() {
                          ischecked = value;
                        });
                      }),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Image.asset('lib/img/file2.png'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 65),
                        child: Text(
                          'Group3_project_demo.zip',
                          style: TextStyle(
                              fontFamily: 'Montserrat2', fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 55),
                        child: Container(
                          width: 230,
                          height: 20,
                          child: linearpercent(),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [],
            ),
          ],
        ),
      ),
    );
  }

  Widget get _buildSubmit {
    return Padding(
      padding: const EdgeInsets.only(top: 325),
      child: ElevatedButton(
        onPressed: () {},
        child: Text('Submit'),
        style: ElevatedButton.styleFrom(
          fixedSize: Size(360, 60),
          textStyle: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 20,
          ),
          primary: Colors.blueAccent[400],
          onPrimary: Colors.white,
          elevation: 12,
          shadowColor: Colors.black87,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}
