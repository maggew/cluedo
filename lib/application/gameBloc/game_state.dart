part of 'game_bloc.dart';

class GameState {
  final int playerNumber;
  final List<String> playerNames;
  final String? errorMessage;
  final int? selectedPlayer;
  final int currentScreen;
  final List<Guest> guests;
  final List<Room> rooms;
  final List<Weapon> weapons;
  final Map<String, List<String>>? mapOfPlayersAndCards;

  GameState({
    required this.playerNumber,
    required this.playerNames,
    required this.errorMessage,
    required this.selectedPlayer,
    required this.currentScreen,
    required this.guests,
    required this.rooms,
    required this.weapons,
    required this.mapOfPlayersAndCards,
  });

  factory GameState.initial() => GameState(
        playerNumber: 2,
        playerNames: [],
        errorMessage: null,
        selectedPlayer: null,
        currentScreen: 0,
        guests: [],
        rooms: [
          for (var room in RoomName.values)
            Room(
              roomName: room
            )
        ],
        weapons: [
          for (var weapon in WeaponName.values)
            Weapon(
              weaponName: weapon,
              icon: mapWeaponIcon(weapon: weapon)
            )
        ],
        mapOfPlayersAndCards: null,
      );

  GameState copyWith({
    int? playerNumber,
    List<String>? playerNames,
    String? errorMessage,
    int? selectedPlayer,
    int? currentScreen,
    List<Guest>? guests,
    List<Room>? rooms,
    List<Weapon>? weapons,
    Map<String, List<String>>? mapOfPlayersAndCards,
  }) {
    return GameState(
      playerNumber: playerNumber ?? this.playerNumber,
      playerNames: playerNames ?? this.playerNames,
      errorMessage: errorMessage ?? this.errorMessage,
      selectedPlayer: selectedPlayer ?? this.selectedPlayer,
      currentScreen: currentScreen ?? this.currentScreen,
      guests: guests ?? this.guests,
      rooms: rooms ?? this.rooms,
      weapons: weapons ?? this.weapons,
      mapOfPlayersAndCards: mapOfPlayersAndCards ?? this.mapOfPlayersAndCards,
    );
  }
}
