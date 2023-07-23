part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class RequestHomeEvent extends HomeEvent {
  RequestHomeEvent();
}
