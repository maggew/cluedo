import 'package:cluedo_neu/application/gameBloc/game_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlayerNumberDropdown extends StatelessWidget {
  final GameState gameState;
  const PlayerNumberDropdown({super.key, required this.gameState});

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<int>(
      dropdownMenuEntries: dropdownList(),
      initialSelection: 2,
      width: 80,
      onSelected: (playerNumber){
        BlocProvider.of<GameBloc>(context).add(ChangePlayerNumberEvent(playerNumber: playerNumber!));
      },
    );
  }
}

List<DropdownMenuEntry<int>> dropdownList() {
  List<DropdownMenuEntry<int>> dropdownList = [];
  for (int i = 2; i < 7; i++) {
    dropdownList.add(DropdownMenuEntry(value: i, label: "$i"));
  }
  return dropdownList;
}
