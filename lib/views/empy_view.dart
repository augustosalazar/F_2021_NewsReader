import 'package:flutter/material.dart';
import '../bloc/bloc_event.dart';
import '../bloc/bloc_states.dart';
import '../bloc/bloc_utils.dart';

class EmptyNews extends StatelessWidget {
  const EmptyNews({Key key, this.state}) : super(key: key);
  final NewsState state;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          onPressed: () {
            BlocUtils()
                .event(context, FetchNewsEvent(topic: "football/football"));
          },
          child: Text("Football news"),
        ),
        ElevatedButton(
          onPressed: () {
            BlocUtils().event(context, FetchNewsEvent(topic: "film/film"));
          },
          child: Text("Film news"),
        )
      ],
    ));
  }
}
