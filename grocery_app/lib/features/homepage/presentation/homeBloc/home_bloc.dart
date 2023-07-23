import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../../../api_gateway/repositories/search_repository/home_repository.dart';
import '../../domain/entities/get_home_model_entity.dart';

import '../../domain/usecase/home_usecase.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<RequestHomeEvent>(_onRequestHome);
  }

  Future<void> _onRequestHome(
      final RequestHomeEvent event, final Emitter<HomeState> emit) async {
    emit(HomeLoadingState());
    final HomeRepository _repository = HomeRepositoryImpl();
    final HomeUseCase _useCase = HomeUseCase(homeRepository: _repository);
    final HomeResultEntity? _entity = await _useCase.getHomeData();

    if (_entity != null) {
      emit(HomeCreatedState(_entity));
    } else {
      emit(HomeErrorState("Unable to send Home Data"));
    }
  }
}
