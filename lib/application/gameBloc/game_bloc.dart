import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc() : super(GameState.initial()) {
    on<ChangePlayerNumberEvent>((event, emit) {
      emit(state.copyWith(playerNumber: event.playerNumber));
    });

    on<LockPlayersEvent>((event, emit) {
      emit(state.copyWith(playerNames: event.playerNames));
    });

    on<UpdateErrorMessageEvent>((event, emit) {
      emit(state.copyWith(errorMessage: event.errorMessage));
    });
  }
}
