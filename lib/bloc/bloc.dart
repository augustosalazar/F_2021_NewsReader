import 'package:F_202110_NewsReader/bloc/bloc_event.dart';
import 'package:F_202110_NewsReader/bloc/bloc_states.dart';
import 'package:F_202110_NewsReader/data/data_repository.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc_event.dart';
import 'bloc_event.dart';
import 'bloc_states.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final DataRepository repository;

  NewsBloc(this.repository) : super(NewsEmptyState());

  @override
  Stream<NewsState> mapEventToState(NewsEvent event) async* {
    if (event is FetchNewsEvent) {
      yield* _doFetch(event);
    } else if (event is RefreshNewsEvent) {
      yield* _doRefresh(event);
    } else if (event is ResetNewsEvent) {
      yield* _doReset(event);
    } else {
      throw Exception("Unhandled News Event");
    }
  }

  Stream<NewsState> _doFetch(FetchNewsEvent event) async* {
    yield NewsLoadingState();

    try {
      var items = await repository.getItems(event.topic);
      yield NewsLoadedState(news: items, topic: event.topic);
    } catch (error) {
      print(error);
      yield NewsErrorState();
    }
  }

  Stream<NewsState> _doRefresh(RefreshNewsEvent event) async* {
    yield NewsLoadingState();

    try {
      var items = await repository.getItems(event.topic);
      yield NewsLoadedState(news: items, topic: event.topic);
    } catch (error) {
      print(error);
      yield NewsErrorState();
    }
  }

  Stream<NewsState> _doReset(ResetNewsEvent event) async* {
    yield NewsEmptyState();
  }
}
