part of 'game_bloc.dart';

class GameState {
  final int playerNumber;
  final List<String> playerNames;
  final String? errorMessage;
  final int? selectedPlayer;
  final int currentScreen;
  final Map<String, bool> guests;
  final List<Room> rooms;

  GameState({
    required this.playerNumber,
    required this.playerNames,
    required this.errorMessage,
    required this.selectedPlayer,
    required this.currentScreen,
    required this.guests,
    required this.rooms,
  });

  factory GameState.initial() => GameState(
      playerNumber: 2,
      playerNames: [],
      errorMessage: null,
      selectedPlayer: null,
      currentScreen: 0,
      guests: {for (var name in guestNames) name: false},
      rooms: [
        for (var room in RoomName.values)
          Room(
            roomName: room,
            checked: false,
            playerWhichHoldsCard: null,
          )
      ]);

  GameState copyWith({
    int? playerNumber,
    List<String>? playerNames,
    String? errorMessage,
    int? selectedPlayer,
    int? currentScreen,
    Map<String, bool>? guests,
    List<Room>? rooms,
  }) {
    return GameState(
      playerNumber: playerNumber ?? this.playerNumber,
      playerNames: playerNames ?? this.playerNames,
      errorMessage: errorMessage ?? this.errorMessage,
      selectedPlayer: selectedPlayer ?? this.selectedPlayer,
      currentScreen: currentScreen ?? this.currentScreen,
      guests: guests ?? this.guests,
      rooms: rooms ?? this.rooms,
    );
  }
}
