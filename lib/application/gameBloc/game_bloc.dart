import 'package:cluedo_neu/business/enums/room_name.dart';
import 'package:cluedo_neu/business/enums/weapon_name.dart';
import 'package:cluedo_neu/business/models/player.dart';
import 'package:cluedo_neu/business/models/room.dart';
import 'package:cluedo_neu/business/models/weapon.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../business/models/guest.dart';

part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc() : super(GameState.initial()) {
    on<ChangePlayerNumberEvent>((event, emit) {
      emit(state.copyWith(playerNumber: event.playerNumber));
    });

    on<LockPlayersEvent>((event, emit) {
      emit(state.copyWith(players: event.players));
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

    // on<CheckRoomEvent>((event, emit) {
    //   List<Room> oldRoomsList = List.of(state.rooms);
    //   int indexOfOldRoom = oldRoomsList.indexOf(event.room);
    //   Room oldRoom = oldRoomsList[indexOfOldRoom];
    //   //Room updatedRoom = oldRoom.copyWith(checked: !oldRoom.checked);
    //   List<Room> updatedRoomsList = oldRoomsList;
    //   //updatedRoomsList[indexOfOldRoom] = updatedRoom;
    //   emit(state.copyWith(rooms: updatedRoomsList));
    // });

    // on<CheckWeaponEvent>((event, emit) {
    //   List<Weapon> oldWeaponsList = List.of(state.weapons);
    //   int indexOfOldWeapon = oldWeaponsList.indexOf(event.weapon);
    //   Weapon oldWeapon = oldWeaponsList[indexOfOldWeapon];
    //   //Weapon updatedWeapon = oldWeapon.copyWith(checked: !oldWeapon.checked);
    //   List<Weapon> updatedWeaponsList = oldWeaponsList;
    //   //updatedWeaponsList[indexOfOldWeapon] = updatedWeapon;
    //   emit(state.copyWith(weapons: updatedWeaponsList));
    // });

    /*on<AssignPlayerCardEvent>((event, emit) {
      Map<String, List<String>> mapOfPlayersAndCards =
          Map.of(state.mapOfPlayersAndCards!);
      String cardName = event.card.name;
      if (event.playerName == "") {
        for (String playerName in mapOfPlayersAndCards.keys) {
          if (mapOfPlayersAndCards[playerName]!.contains(cardName)) {
            mapOfPlayersAndCards[playerName]!.remove(cardName);
          }
        }
      } else if (!mapOfPlayersAndCards[event.playerName]!.contains(cardName)) {
        mapOfPlayersAndCards[event.playerName]!.add(cardName);
      }
      emit(state.copyWith(mapOfPlayersAndCards: mapOfPlayersAndCards));
      print(mapOfPlayersAndCards);
    });*/
  }
}
