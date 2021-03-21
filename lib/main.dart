import 'package:directory_bloc/person/person_bloc.dart';
import 'package:directory_bloc/theme/theme_cubit.dart';
import 'package:directory_bloc/ui/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ThemeCubit(),
          ),
          BlocProvider(
            create: (context) => PersonBloc([]),
          ),
        ],
        child: BlocBuilder<ThemeCubit, ThemeData>(
          builder: (context, theme) {
            return MaterialApp(
              theme: theme,
              home: MyHomePage(),
              debugShowCheckedModeBanner: false
            );
          },
        ));
  }
}
