import 'package:cluedo_neu/application/gameBloc/game_bloc.dart';
import 'package:cluedo_neu/business/models/player.dart';
import 'package:cluedo_neu/core/widgets/custom_weapon_button.dart';
import 'package:cluedo_neu/business/models/weapon.dart';
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
      child: Row(
        children: [
          Expanded(
            child: CustomWeaponButton(
              weapon: weapon,
              highlightColor: themeData.colorScheme.onPrimary,
              callback: () {
                BlocProvider.of<GameBloc>(context)
                    .add(CheckWeaponEvent(weapon: weapon));
              },
            ),
          ),
          Gap(10),
          DropdownMenu<String>(
            dropdownMenuEntries: getDropdownMenuEntries(gameState: gameState),
            initialSelection: "",
            onSelected: (playerName) {
              BlocProvider.of<GameBloc>(context).add(AssignPlayerCardEvent(
                  card: weapon.weaponName, playerName: playerName!));
            },
          ),
        ],
      ),
    ));
  }
  return roomCheckboxWidgets;
}

List<DropdownMenuEntry<String>> getDropdownMenuEntries(
    {required GameState gameState}) {
  List<DropdownMenuEntry<String>> dropdownMenuEntries = [];
  dropdownMenuEntries.add(DropdownMenuEntry<String>(value: "", label: ""));
  for (Player player in gameState.players) {
    dropdownMenuEntries.add(DropdownMenuEntry<String>(
      value: player.playerName,
      label: player.playerName,
    ));
  }
  return dropdownMenuEntries;
}
