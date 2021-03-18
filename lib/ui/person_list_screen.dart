import 'package:directory_bloc/ui/person_list.dart';
import 'package:flutter/material.dart';

class PersonListScreen extends StatefulWidget {
  @override
  _PersonListScreenState createState() => _PersonListScreenState();
}

class _PersonListScreenState extends State<PersonListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Telephone Directory"),
      ),
      body: PersonList(),
    );
  }
}
