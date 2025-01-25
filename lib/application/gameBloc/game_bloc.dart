
import 'package:cluedo_neu/utils/constants.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


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

    on<SelectYourselfEvent>((event, emit) {
      int numberOfPlayers = state.playerNumber;
      if (event.selectedPlayer > numberOfPlayers - 1) {
        emit(state.copyWith(selectedPlayer: null));
      } else {
        emit(state.copyWith(selectedPlayer: event.selectedPlayer));
      }
    });

    on<ChangeGameScreenEvent>((event, emit) {
      emit(state.copyWith(currentScreen: event.screenNumber));
    });
  }

  
}
