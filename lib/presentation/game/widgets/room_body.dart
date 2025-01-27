import 'package:cluedo_neu/application/gameBloc/game_bloc.dart';
import 'package:cluedo_neu/core/widgets/custom_checkbox_button.dart';
import 'package:cluedo_neu/domain/enums/category_name.dart';
import 'package:cluedo_neu/infrastructure/models/room.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class LocationBody extends StatelessWidget {
  final GameState gameState;
  const LocationBody({super.key, required this.gameState});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Gap(5),
          ...roomCheckboxWidgets(gameState: gameState, context: context)
        ],
      ),
    );
  }
}

List<Widget> roomCheckboxWidgets(
    {required GameState gameState, required context}) {
  final ThemeData themeData = Theme.of(context);
  List<Widget> roomCheckboxWidgets = [];
  for (Room room in gameState.rooms) {
    roomCheckboxWidgets.add(Padding(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: CustomCheckboxButton(
        gameState: gameState,
        room: room,
        highlightColor: themeData.colorScheme.onPrimary,
        callback: () {
          BlocProvider.of<GameBloc>(context).add(CheckDataEvent(
            categoryName: CategoryName.room,
            listIndex: gameState.rooms.indexOf(room),
          ));
        },
      ),
    )
        /*Padding(
        padding: const EdgeInsets.fromLTRB(10,5,10,5),
        child: Card(
          color: themeData.colorScheme.primaryContainer,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(room.roomName.name),
              ),
              Checkbox(
                  value: room.checked,
                  onChanged: (value) {
                    BlocProvider.of<GameBloc>(context).add(CheckDataEvent(
                        categoryName: CategoryName.room,
                        listIndex: gameState.rooms.indexOf(room),
                        checked: value!));
                  }),
            ],
          ),
        ),
      ),*/
        );
  }
  return roomCheckboxWidgets;
}
