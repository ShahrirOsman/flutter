import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const textStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w500,
);

class ProgramScreen extends StatefulWidget {
  static const String id = 'program_screen';
  ProgramScreen({this.index});
  final int index;
  @override
  _ProgramScreenState createState() => _ProgramScreenState();
}

class _ProgramScreenState extends State<ProgramScreen> {
  List _programs = [];
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/program.json');
    final data = await json.decode(response);
    print(data);
    setState(() {
      _programs = data;
    });
  }

  @override
  void initState() {
    super.initState();

    setState(() {
      readJson();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Program 2021'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 100,
          ),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '${_programs[widget.index]['tajuk']}',
                    style: TextStyle(
                      color: Colors.indigo[800],
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Image(
                      height: 200,
                      image: AssetImage('${_programs[widget.index]['image']}'),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    '${_programs[widget.index]['teks']}',
                    style: textStyle,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
