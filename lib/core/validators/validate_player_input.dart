import 'package:cluedo_neu/application/gameBloc/game_bloc.dart';
import 'package:cluedo_neu/business/models/player.dart';

class PlayerValidation {
  String? validatePlayerList({required List<Player> players}) {
    for (int i = 0; i < players.length - 1; i++) {
      for (int j = i + 1; j < players.length; j++) {
        if (players[i].playerName.trim() == "" ||
            players[j].playerName.trim() == "") {
          return "Mindestens ein Spieler hat keinen Namen.";
        } else if (players[i].playerName.trim().toLowerCase() ==
            players[j].playerName.trim().toLowerCase()) {
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
