import 'dart:html';

import 'package:F_202110_NewsReader/data/news_item.dart';
import 'package:equatable/equatable.dart';

abstract class NewsState extends Equatable {
  const NewsState();

  @override
  List<Object> get props => [];
}

class NewsEmptyState extends NewsState {}

class NewsLoadingState extends NewsState {}

class NewsErrorState extends NewsState {}

class NewsLoadedState extends NewsState {
  final List<NewsItem> news;
  final String topic;

  NewsLoadedState(this.news, this.topic);

  @override
  List<Object> get props => [news];
}
