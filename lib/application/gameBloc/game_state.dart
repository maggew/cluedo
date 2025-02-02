part of 'game_bloc.dart';

class GameState {
  final int playerNumber;
  final List<Player> players;
  final String? errorMessage;
  final int? selectedPlayer;
  final int currentScreen;
  final List<Guest> guests;
  final List<Room> rooms;
  final List<Weapon> weapons;


  GameState({
    required this.playerNumber,
    required this.players,
    required this.errorMessage,
    required this.selectedPlayer,
    required this.currentScreen,
    required this.guests,
    required this.rooms,
    required this.weapons,

  });

  factory GameState.initial() => GameState(
        playerNumber: 2,
        players: [],
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
  
      );

  GameState copyWith({
    int? playerNumber,
    List<Player>? players,
    String? errorMessage,
    int? selectedPlayer,
    int? currentScreen,
    List<Guest>? guests,
    List<Room>? rooms,
    List<Weapon>? weapons,
   
  }) {
    return GameState(
      playerNumber: playerNumber ?? this.playerNumber,
      players: players ?? this.players,
      errorMessage: errorMessage ?? this.errorMessage,
      selectedPlayer: selectedPlayer ?? this.selectedPlayer,
      currentScreen: currentScreen ?? this.currentScreen,
      guests: guests ?? this.guests,
      rooms: rooms ?? this.rooms,
      weapons: weapons ?? this.weapons,
      
    );
  }
}
