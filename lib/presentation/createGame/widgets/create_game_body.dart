import 'package:cluedo_neu/application/gameBloc/game_bloc.dart';
import 'package:cluedo_neu/presentation/createGame/widgets/player_names_input.dart';
import 'package:cluedo_neu/presentation/createGame/widgets/player_number_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CreateGameBody extends StatelessWidget {
  final GameState gameState;
  final List<TextEditingController> textEditingControllers;
  const CreateGameBody({super.key, required this.gameState, required this.textEditingControllers});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Anzahl Spieler:",
                  style: themeData.textTheme.headlineLarge,
                ),
                Gap(20),
                PlayerNumberDropdown(gameState: gameState),
              ],
            ),
            Gap(50),
            PlayerNamesInput(
              gameState: gameState,
              textEditingControllers: textEditingControllers,
            )
          ],
        ),
      ),
    );
  }
}
