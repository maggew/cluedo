import 'package:cluedo_neu/application/gameBloc/game_bloc.dart';
import 'package:flutter/material.dart';

class WeaponBody extends StatelessWidget {
  final GameState gameState;
  const WeaponBody({super.key, required this.gameState});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: Colors.green,
    );
  }
}