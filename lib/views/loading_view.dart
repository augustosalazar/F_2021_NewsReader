import 'package:flutter/material.dart';

import '../bloc/bloc_states.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({Key key, this.state}) : super(key: key);
  final NewsState state;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CircularProgressIndicator(
        backgroundColor: Colors.black,
      ),
    );
  }
}
