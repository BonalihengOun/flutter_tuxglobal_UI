import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_tux/screen/Sign_in_screen.dart';

class signup_screen extends StatefulWidget {
  const signup_screen({super.key});

  @override
  State<signup_screen> createState() => _signup_screenState();
}

class _signup_screenState extends State<signup_screen> {
  final _text2Controller = TextEditingController();
  final _text3Controller = TextEditingController();
  bool _obscureText = true;
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
              'Welcome to TUX',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 33,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: Text(
              'Fill information to register',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                color: Colors.grey[500],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 340,
            height: 55,
            child: TextField(
              controller: _text2Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    _text2Controller.clear();
                  },
                  icon: Image.asset('lib/img/clear.png'),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  borderSide: BorderSide(width: 2),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                labelText: 'Full Name',
                labelStyle:
                    TextStyle(color: Colors.grey, fontFamily: 'Montserrat'),
                hintText: '   Full Name',
                hintStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  color: Colors.grey[350],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 340,
            height: 55,
            child: TextField(
              controller: _text3Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    _text3Controller.clear();
                  },
                  icon: Image.asset('lib/img/clear.png'),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  borderSide: BorderSide(width: 2),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                labelText: 'Phone number',
                labelStyle:
                    TextStyle(color: Colors.grey, fontFamily: 'Montserrat'),
                hintText: '   Phone number',
                hintStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  color: Colors.grey[350],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 340,
            height: 55,
            child: TextField(
              obscuringCharacter: '#',
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  borderSide: BorderSide(width: 2),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  child: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: Colors.black,
                  ),
                ),
                labelText: 'Password',
                labelStyle:
                    TextStyle(color: Colors.grey, fontFamily: 'Montserrat'),
                hintText: '   Password',
                hintStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  color: Colors.grey[350],
                ),
              ),
              obscureText: _obscureText,
            ),
          ),
          SizedBox(
            height: 30,
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
              child: Text('Sign Up'),
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
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),
        ],
      ),
    );
  }
}
