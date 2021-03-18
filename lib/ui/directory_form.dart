import 'package:directory_bloc/bloc/person_bloc.dart';
import 'package:directory_bloc/events/person_event.dart';
import 'package:directory_bloc/model/person.dart';
import 'package:directory_bloc/ui/person_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DirectoryForm extends StatefulWidget {
  @override
  _DirectoryFormState createState() => _DirectoryFormState();
}

class _DirectoryFormState extends State<DirectoryForm> {
  String _personname;
  String _personnumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.orange,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          height: 300,
          width: 300,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  "New Person",
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(labelText: "Name"),
                  style: TextStyle(fontSize: 22),
                  onChanged: (text) {
                    setState(() {
                      _personname = text;
                    });
                  },
                ),
                TextField(
                  decoration: InputDecoration(labelText: "Number"),
                  style: TextStyle(fontSize: 22),
                  onChanged: (number) {
                    setState(() {
                      _personnumber = number;
                    });
                  },
                ),
                SizedBox(height:35),
                TextButton(
                  onPressed: () =>
                      BlocProvider.of<PersonBloc>(context).add(PersonEvent.add(
                    Person(_personname, _personnumber),
                  )),
                  child: Text("Save"),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.teal,
                    onSurface: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
          child: Icon(Icons.navigate_next),
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => PersonListScreen()))),
    );
  }
}
