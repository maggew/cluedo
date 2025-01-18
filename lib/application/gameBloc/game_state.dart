part of 'game_bloc.dart';

class GameState {
  final int playerNumber;
  final List<String> playerNames;
  final String? errorMessage;

  GameState({
    required this.playerNumber,
    required this.playerNames,
    required this.errorMessage,
  });

  factory GameState.initial() => GameState(
        playerNumber: 2,
        playerNames: [],
        errorMessage: null,
      );

  GameState copyWith({
    int? playerNumber,
    List<String>? playerNames,
    String? errorMessage,
  }) {
    return GameState(
      playerNumber: playerNumber ?? this.playerNumber,
      playerNames: playerNames ?? this.playerNames,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
