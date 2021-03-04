import 'package:flutter/material.dart';

import '../bloc/bloc_states.dart';

class ErrorView extends StatelessWidget {
  final NewsState state;

  ErrorView(this.state);

  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text("error")));
  }
}
