import 'package:directory_bloc/bloc/person_bloc.dart';
import 'package:directory_bloc/bloc/person_bloc_delegate.dart';
import 'package:directory_bloc/ui/directory_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  BlocSupervisor.delegate=PersonBlocDelegate();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return BlocProvider<PersonBloc>(create:(context)=>PersonBloc(),
    child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: DirectoryForm(),
    ),
    );
    
    
    
  }
}

