import 'package:equatable/equatable.dart';

abstract class NewsEvent extends Equatable {
  const NewsEvent();
}

class FetchNewsEvent extends NewsEvent {
  final String topic;

  FetchNewsEvent({this.topic});

  @override
  List<Object> get props => [topic];
}

class RefreshNewsEvent extends NewsEvent {
  final String topic;

  RefreshNewsEvent(this.topic);

  @override
  List<Object> get props => [topic];
}

class ResetNewsEvent extends NewsEvent {
  @override
  List<Object> get props => null;
}

class ErrorNewsEvent extends NewsEvent {
  @override
  List<Object> get props => null;
}
