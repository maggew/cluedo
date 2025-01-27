import 'package:cluedo_neu/domain/enums/category_name.dart';
import 'package:cluedo_neu/domain/enums/room_name.dart';
import 'package:cluedo_neu/infrastructure/models/room.dart';
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

    on<CheckDataEvent>((event, emit) {
      switch (event.categoryName) {
        case CategoryName.guest:
          //TODO: Hier muss der Datentyp noch komplett geändert werden
          //TODO: Das wollte ich aber nicht machen, bevor ich gesehen habe, wie du die Klasse umgesetzt hast
          emit(state.copyWith(guests: null));
        case CategoryName.room:
          List<Room> roomsList = List.of(state.rooms);
          Room oldRoom = roomsList[event.listIndex];
          Room updatedRoom = oldRoom.copyWith(checked: oldRoom.checked);
          roomsList[event.listIndex] = updatedRoom;
          emit(state.copyWith(rooms: roomsList));
        case CategoryName.weapon:
        //TODO: dasselbe hier auch noch machen
      }
    });
  }
}
