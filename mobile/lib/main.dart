// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, override_on_non_overriding_member, prefer_interpolation_to_compose_strings
import 'package:flutter/material.dart';
import 'package:mobile/student.dart';

import 'ApiService.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  List<Student> _studenti = [];

  Future<List<Student>> GetIgrace() async {
    var result = await APIService.Get("Student", null) as List;

    _studenti = result.map((i) => Student.fromJson(i)).toList();

    return _studenti;
  }

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    widget.GetIgrace();
    return MaterialApp(
        home: Scaffold(
            body: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    ListView(
                      shrinkWrap: true,
                      children: widget._studenti
                          .map((element) => StudentKartica(element))
                          .toList(),
                    )
                  ],
                ))));
  }
}

Widget StudentKartica(Student student) {
  return Text(student.name + " " + student.surname);
}
