import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_tux/screen/dashboard.dart';

class Elibrary_screen extends StatefulWidget {
  const Elibrary_screen({super.key});

  @override
  State<Elibrary_screen> createState() => _Elibrary_screenState();
}

class _Elibrary_screenState extends State<Elibrary_screen> {
  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(bottom: 9),
          child: Text(
            'E-Library',
            style: TextStyle(
                fontFamily: 'Montserrat', fontSize: 34, color: Colors.black),
          ),
        ),
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(4),
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
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              width: 370,
              height: 60,
              color: Color.fromARGB(255, 247, 244, 244),
              child: TextField(
                controller: _textController,
                decoration: InputDecoration(
                  focusColor: Color(0xffEFEFEF),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  prefixIcon: Image.asset('lib/img/search.png'),
                  suffixIcon: IconButton(
                    onPressed: () {
                      _textController.clear();
                    },
                    icon: Image.asset('lib/img/clear.png'),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  hintText: 'Enter title',
                  hintStyle: TextStyle(
                    fontFamily: 'Montserrat4',
                    fontSize: 15,
                    color: Color(0xff7A7676),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 370,
            height: 190,
            decoration: BoxDecoration(
              color: Color(0xffE0EAF8),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Text(
                        'READER THE OF MONTH',
                        style: TextStyle(
                          fontFamily: 'Niradei',
                          fontSize: 15,
                          color: Color(0xffCB4A02),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Text(
                        'Lorem Ipsum is simply \ndummy text of the printing \nand typesetting industry. \nLorem Ipsum has been the \nindustry\s standard dummy \ntext ever since the 1500s',
                        style: TextStyle(
                          fontFamily: 'Montserrat4',
                          fontSize: 13,
                          color: Color(0xff7D7D7D),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2, right: 138),
                      child: Text(
                        'more',
                        style: TextStyle(
                          fontFamily: 'Montserrat4',
                          fontSize: 13,
                          color: Color(0xff001AFF),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Image.asset('lib/img/kokkaka.png'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "Current reading book",
                  style: TextStyle(
                      fontFamily: 'Montserrat3',
                      fontSize: 23,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'more',
                    style: TextStyle(
                      fontFamily: 'Montserrat2',
                      fontSize: 18,
                      color: Color(0xff2A18F8),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Image.asset('lib/img/Book1.png'),
                      ),
                      Text(
                        "The Handmaid’s Tale",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        "20%",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 13,
                            color: Colors.red),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 1, right: 80),
                        child: Image.asset('lib/img/Book2.png'),
                      ),
                      Text(
                        "The God of Small Thing",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        "1%",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 13,
                            color: Colors.red),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'Most reading book',
                  style: TextStyle(fontFamily: 'Montserrat3', fontSize: 23),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'more',
                    style: TextStyle(
                      fontFamily: 'Montserrat2',
                      fontSize: 18,
                      color: Color(0xff2A18F8),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('lib/img/Book1.png'),
                        Text(
                          "The Handmaid’s Tale",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('lib/img/Book3.png'),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Anna Karenina",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('lib/img/Book2.png'),
                        Text(
                          "The God of Small Thing",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
