import 'package:cluedo_neu/application/gameBloc/game_bloc.dart';

class PlayerValidation {
  String? validatePlayerList({required List<String> playerNames}) {
    for (int i = 0; i < playerNames.length - 1; i++) {
      for (int j = i + 1; j < playerNames.length; j++) {
        if (playerNames[i].trim() == "" || playerNames[j].trim() == "") {
          return "Mindestens ein Spieler hat keinen Namen.";
        } else if (playerNames[i].trim().toLowerCase() ==
            playerNames[j].trim().toLowerCase()) {
          return "Spieler müssen unterschiedliche Namen haben.";
        }
      }
    }
    return null;
  }

  bool yourPlayerIsSelected({required GameState gameState}) {
    if (gameState.selectedPlayer != null &&
        gameState.selectedPlayer! < gameState.playerNumber) {
      return true;
    }
    return false;
  }
}
