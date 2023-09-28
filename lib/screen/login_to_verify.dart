import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_tux/screen/dashboard.dart';
import 'package:pinput/pinput.dart';

class verifyscreen extends StatefulWidget {
  const verifyscreen({super.key});

  @override
  State<verifyscreen> createState() => _verifyscreenState();
}

class _verifyscreenState extends State<verifyscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(340),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(80),
              bottomRight: Radius.circular(80),
            ),
            image: DecorationImage(
              image: AssetImage('lib/img/background.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 115),
                      width: 140,
                      height: 140,
                      child: Image.asset('lib/img/tux.png'),
                    ),
                  ),
                  Container(
                    child: Text(
                      'Live the greater cause',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 18,
                        fontWeight: FontWeight.w200,
                        color: Color.fromARGB(255, 104, 104, 104),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      'beyond yourself!',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 18,
                        fontWeight: FontWeight.w200,
                        color: Color.fromARGB(255, 104, 104, 104),
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
            height: 60,
          ),
          Center(
            child: Text(
              'Verification',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: Text(
              'Code is sent to 011 744 010',
              style: TextStyle(
                fontFamily: 'Montserrat2',
                fontSize: 18,
                color: Colors.grey[500],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Pinput(
              length: 4,
              defaultPinTheme: PinTheme(
                height: 60,
                width: 60,
                textStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1, color: Colors.black),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 7),
                        blurRadius: 7,
                        color: Colors.grey,
                        spreadRadius: -5)
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Not received code?',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              TextButton(
                onPressed: (() {}),
                child: Text(
                  'Resend',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 18,
                    color: Colors.blueAccent[400],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => dashboard(),
                    ));
              },
              child: Text('Submit'),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(226, 60),
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
          ),
        ],
      ),
    );
  }
}
