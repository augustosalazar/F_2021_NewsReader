import 'package:flutter/material.dart';

import '../bloc/bloc_event.dart';
import '../bloc/bloc_states.dart';
import '../bloc/bloc_states.dart';
import '../bloc/bloc_utils.dart';
import '../data/news_item.dart';
import 'list_item.dart';

class LoadedView extends StatelessWidget {
  const LoadedView(this.state);
  final NewsState state;

  _refreshList(BuildContext context, String topic) {
    BlocUtils().event(context, RefreshNewsEvent(topic));
  }

  @override
  Widget build(BuildContext context) {
    NewsLoadedState _state = state;
    List<ListItem> items = [];

    for (var news in _state.news) {
      items.add(ListItem(news));
    }

    return GestureDetector(
      onHorizontalDragEnd: (details) {
        BlocUtils().event(context, ResetNewsEvent());
      },
      child: RefreshIndicator(
        child: ListView(
          children: items,
        ),
        onRefresh: () => _refreshList(context, _state.topic),
      ),
    );
  }
}
