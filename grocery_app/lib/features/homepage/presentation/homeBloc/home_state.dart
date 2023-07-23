part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeErrorState extends HomeState {
  final String errorMsg;
  HomeErrorState(this.errorMsg);
}

class HomeLoadingState extends HomeState {}

class HomeCreatedState extends HomeState {
  final HomeResultEntity homeResultsEntity;

  HomeCreatedState(
    this.homeResultsEntity,
  );
}

class HomeSuccessState extends HomeState {}
