import 'package:cluedo_neu/application/gameBloc/game_bloc.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PlayerNamesInput extends StatelessWidget {
  final GameState gameState;
  final List<TextEditingController> textEditingControllers;
  const PlayerNamesInput(
      {super.key,
      required this.gameState,
      required this.textEditingControllers});

  @override
  Widget build(BuildContext context) {
    List<Widget> playerNameInputForms =
        getPlayerNameInputForms(gameState.playerNumber, textEditingControllers);
    return Column(
      children: playerNameInputForms,
    );
  }
}

List<Widget> getPlayerNameInputForms(
    int playerNumber, List<TextEditingController> textEditingControllers) {
  List<Widget> output = [];

  for (int i = 0; i < playerNumber; i++) {
    output.add(Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: TextFormField(
            controller: textEditingControllers[i],
            enabled: true,
            decoration: InputDecoration(hintText: "Spieler ${i + 1}"),
          ),
        ),
        Gap(20),
        SizedBox(width: 20),
      ],
    ));
    output.add(Gap(20));
  }

  return output;
}
