import 'package:directory_bloc/bloc/person_bloc.dart';
import 'package:directory_bloc/model/person.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonList extends StatefulWidget {
  @override
  _PersonListState createState() => _PersonListState();
}

class _PersonListState extends State<PersonList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: BlocConsumer<PersonBloc, List<Person>>(
        buildWhen: (List<Person> previous, List<Person> current) {
          return true;
        },
        listenWhen: (List<Person> previous, List<Person> current) {
          if (previous.length > current.length) {
            return true;
          }
          return false;
        },
        builder: (context, personList) {
          return ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: EdgeInsets.all(16),
              itemCount: personList.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                      title: Text(personList[index].personname),
                      subtitle: Text(personList[index].personnumber),
                      onTap: () {}),
                );
              });
        },
        listener: (BuildContext context, personList) {
          // ignore: deprecated_member_use
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text("Added"),
          ));
        },
      ),
    );
  }
}
