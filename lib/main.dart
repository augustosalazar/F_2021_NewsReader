import 'package:F_202110_NewsReader/bloc/bloc.dart';
import 'package:F_202110_NewsReader/data/data_repository.dart';
import 'package:F_202110_NewsReader/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  final DataRepository repository = DataRepository();
  runApp(MyApp(repository: repository));
}

class MyApp extends StatelessWidget {
  const MyApp({this.repository});
  final DataRepository repository;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocProvider(
        create: (context) => NewsBloc(repository),
        child: MyHomePage(),
      ),
    );
  }
}
