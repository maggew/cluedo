import 'package:cluedo_neu/application/gameBloc/game_bloc.dart';
import 'package:cluedo_neu/utils/constants.dart';
import 'package:flutter/material.dart';

class GuestBody extends StatelessWidget {
  final GameState gameState;
  const GuestBody({super.key, required this.gameState});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
      child: Column(
        children: getGuestRows(gameState: gameState),
      ),
    );
  }
}

List<Widget> getGuestRows({required GameState gameState}) {
  List<Widget> output = [];
  for (String guest in guestNames) {
    output.add(Card(
      color: Colors.amber,
      child: Text(guest),
    ));
  }

  return output;
}
