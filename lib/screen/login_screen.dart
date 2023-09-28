import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_tux/screen/Sign_in_screen.dart';
import 'package:flutter_application_tux/screen/Sign_up_screen.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 200, right: 10),
              width: 178,
              height: 183,
              child: Image.asset('lib/img/tux.png'),
            ),
          ),
          Text(
            'Live the greater cause beyond ',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: Colors.grey,
            ),
          ),
          Text(
            'yourself!',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: Colors.grey,
              fontStyle: FontStyle.normal,
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sigin_screen(),
                    ));
              },
              child: Text(
                'Sign In',
                style: TextStyle(fontFamily: 'Montserrat'),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(306, 60),
                textStyle: TextStyle(
                  fontFamily: 'Niradei',
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
                primary: Colors.blueAccent[400],
                onPrimary: Colors.white,
                elevation: 12,
                shadowColor: Colors.black87,
                shape: StadiumBorder(),
              ),
            ),
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
                      builder: (context) => signup_screen(),
                    ));
              },
              child: Text(
                'Sign Up',
                style: TextStyle(fontFamily: 'Montserrat'),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(306, 60),
                textStyle: TextStyle(
                  fontFamily: 'Niradei',
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
                primary: Colors.white,
                onPrimary: Colors.black,
                elevation: 12,
                shadowColor: Colors.black87,
                side: BorderSide(color: Colors.black87, width: 2),
                shape: StadiumBorder(),
              ),
            ),
          ),
        ],
      ),
      
    );
    
  }
}
