import 'package:F_202110_NewsReader/bloc/bloc.dart';
import 'package:F_202110_NewsReader/bloc/bloc_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocUtils {
  static final BlocUtils _singleton = BlocUtils._internal();

  factory BlocUtils() {
    return _singleton;
  }

  BlocUtils._internal();

  void event(BuildContext context, NewsEvent event) {
    BlocProvider.of<NewsBloc>(context).add(event);
  }
}
