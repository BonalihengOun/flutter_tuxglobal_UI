import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_tux/screen/login_to_verify.dart';

class Sigin_screen extends StatefulWidget {
  const Sigin_screen({super.key});

  @override
  State<Sigin_screen> createState() => _Sigin_screenState();
}

class _Sigin_screenState extends State<Sigin_screen> {
  final _text1Controller = TextEditingController();
  bool _obscureText = true;
  bool? ischecked = false;
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
              'Sign in to continue',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 20,
                color: Colors.grey[500],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          //inputphonenumber
          Container(
            width: 340,
            height: 55,
            child: TextField(
              controller: _text1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    _text1Controller.clear();
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
          //inputpassword
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
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Checkbox(
                    value: ischecked,
                    activeColor: Colors.black,
                    onChanged: (value) {
                      print(value);
                      setState(() {
                        ischecked = value;
                      });
                    }),
              ),
              Text(
                'Remember me',
                style: TextStyle(
                    fontFamily: 'Montserrat2',
                    fontSize: 15,
                    color: Colors.grey),
              ),
              SizedBox(
                width: 50,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  primary: Color.fromARGB(255, 92, 65, 241),
                ),
                child: Text(
                  'Forget Password?',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                    color: Color.fromARGB(255, 91, 66, 255),
                  ),
                ),
                onPressed: (() {}),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Column(
            children: [
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => verifyscreen(),
                        ));
                  },
                  child: Text('Login'),
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
        ],
      ),
    );
  }
}
