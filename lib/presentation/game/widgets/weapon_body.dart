import 'package:cluedo_neu/application/gameBloc/game_bloc.dart';
import 'package:cluedo_neu/core/widgets/custom_weapon_button.dart';
import 'package:cluedo_neu/infrastructure/models/weapon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class WeaponBody extends StatelessWidget {
  final GameState gameState;
  const WeaponBody({super.key, required this.gameState});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Gap(5),
          ...weaponCheckboxWidgets(gameState: gameState, context: context)
        ],
      ),
    );
  }
}

List<Widget> weaponCheckboxWidgets(
    {required GameState gameState, required context}) {
  final ThemeData themeData = Theme.of(context);
  List<Widget> roomCheckboxWidgets = [];
  for (Weapon weapon in gameState.weapons) {
    roomCheckboxWidgets.add(Padding(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: CustomWeaponButton(
        gameState: gameState,
        weapon: weapon,
        highlightColor: themeData.colorScheme.onPrimary,
        callback: () {
          BlocProvider.of<GameBloc>(context)
              .add(CheckWeaponEvent(weapon: weapon));
        },
      ),
    ));
  }
  return roomCheckboxWidgets;
}
