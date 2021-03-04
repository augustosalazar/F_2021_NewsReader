import 'package:F_202110_NewsReader/views/empy_view.dart';
import 'package:F_202110_NewsReader/views/error_view.dart';
import 'package:F_202110_NewsReader/views/loaded_view.dart';
import 'package:F_202110_NewsReader/views/loading_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bloc.dart';
import '../bloc/bloc_states.dart';
import '../bloc/bloc_states.dart';
import '../bloc/bloc_states.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 22, right: 2, left: 2),
        child: Column(
          children: [
            Image(image: AssetImage("assets/images/logo.png")),
            Container(
                height: 420,
                child: BlocConsumer<NewsBloc, NewsState>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    print(state);
                    if (state is NewsEmptyState) {
                      return EmptyNews(state: state);
                    }
                    if (state is NewsLoadingState) {
                      return LoadingView(state: state);
                    }
                    if (state is NewsErrorState) {
                      return ErrorView(state);
                    }
                    if (state is NewsLoadedState) {
                      return LoadedView(state);
                    }
                    return Text('$state');
                  },
                )),
          ],
        ),
      ),
    );
  }
}
