import 'package:F_202110_NewsReader/bloc/bloc_event.dart';
import 'package:F_202110_NewsReader/bloc/bloc_states.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc() : super(NewsEmptyState());

  @override
  Stream<NewsState> mapEventToState(NewsEvent event) async* {
    if (event is FetchNewsEvent) {
      yield* _doFetch(event);
    } else if (event is RefreshNewsEvent) {
    } else if (event is ResetNewsEvent) {
    } else {
      throw Exception("Unhandled News Event");
    }
  }

  Stream<NewsState> _doFetch(FetchNewsEvent event) async* {
    yield NewsLoadingState();
  }
}
