import 'package:cluedo_neu/application/gameBloc/game_bloc.dart';
import 'package:flutter/material.dart';

class GuestBody extends StatelessWidget {
  final GameState gameState;
  const GuestBody({super.key, required this.gameState});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: Colors.amber,
    );
  }
}