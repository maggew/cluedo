part of 'game_bloc.dart';

class GameState {
  final int playerNumber;
  final List<String> playerNames;
  final String? errorMessage;
  final int? selectedPlayer;
  final int currentScreen;

  GameState({
    required this.playerNumber,
    required this.playerNames,
    required this.errorMessage,
    required this.selectedPlayer,
    required this.currentScreen,
  });

  factory GameState.initial() => GameState(
        playerNumber: 2,
        playerNames: [],
        errorMessage: null,
        selectedPlayer: null,
        currentScreen: 0,
      );

  GameState copyWith({
    int? playerNumber,
    List<String>? playerNames,
    String? errorMessage,
    int? selectedPlayer,
    int? currentScreen,
  }) {
    return GameState(
      playerNumber: playerNumber ?? this.playerNumber,
      playerNames: playerNames ?? this.playerNames,
      errorMessage: errorMessage ?? this.errorMessage,
      selectedPlayer: selectedPlayer ?? this.selectedPlayer,
      currentScreen: currentScreen ?? this.currentScreen,
    );
  }
}
