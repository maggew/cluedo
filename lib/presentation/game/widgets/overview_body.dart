import 'package:cluedo_neu/application/gameBloc/game_bloc.dart';
import 'package:cluedo_neu/business/models/player.dart';
import 'package:flutter/material.dart';

class OverviewBody extends StatelessWidget {
  final GameState gameState;
  const OverviewBody({super.key, required this.gameState});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
            color: Colors.blueGrey,
          ),
          padding: EdgeInsets.only(top: 20, bottom: 20),
          width: double.infinity,
          child: Column(
            children: getAllPlayerQuestionsAsked(gameState: gameState),
          ),
        ),
      ),
    );
  }

  List<Widget> getAllPlayerQuestionsAsked({required GameState gameState}) {
    List<Widget> allPlayerQuestionsAsked = [];
    for (Player player in gameState.players) {
      allPlayerQuestionsAsked
          .add(addPlayerQuestionsAsked(gameState: gameState, player: player));
    }
    return allPlayerQuestionsAsked;
  }

  Widget addPlayerQuestionsAsked(
      {required Player player, required GameState gameState}) {
    return Column(
      children: [
        Container(
          height: 100,
          width: double.infinity,
          color: player.color,
        )
      ],
    );
  }
}
