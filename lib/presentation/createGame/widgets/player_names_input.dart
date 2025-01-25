import 'package:cluedo_neu/application/gameBloc/game_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    List<Widget> playerNameInputForms = getPlayerNameInputForms(
        gameState: gameState,
        textEditingControllers: textEditingControllers,
        context: context);
    return Column(
      children: playerNameInputForms,
    );
  }
}

List<Widget> getPlayerNameInputForms(
    {required List<TextEditingController> textEditingControllers,
    required context,
    required GameState gameState}) {
  List<Widget> output = [];

  for (int i = 0; i < gameState.playerNumber; i++) {
    bool playerIsSelected = isSelected(gameState: gameState, currentPlayer: i);
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
        Checkbox(
          onChanged: (val) {
            BlocProvider.of<GameBloc>(context)
                .add(SelectYourselfEvent(selectedPlayer: i));
          },
          value: playerIsSelected,
        )
      ],
    ));
    output.add(Gap(20));
  }
  output.add(Gap(80));

  return output;
}

bool isSelected({required GameState gameState, required int currentPlayer}) {
  if (gameState.selectedPlayer == currentPlayer) {
    return true;
  }
  return false;
}
