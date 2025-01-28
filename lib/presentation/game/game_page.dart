import 'package:auto_route/auto_route.dart';
import 'package:cluedo_neu/application/gameBloc/game_bloc.dart';
import 'package:cluedo_neu/presentation/game/widgets/guest_body.dart';
import 'package:cluedo_neu/presentation/game/widgets/room_body.dart';
import 'package:cluedo_neu/presentation/game/widgets/overview_body.dart';
import 'package:cluedo_neu/presentation/game/widgets/weapon_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

@RoutePage()
class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> bottomNavigationBarItems =
        getBottomNavigationBarItems(context: context);

    return BlocBuilder<GameBloc, GameState>(builder: (context, gameState) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Spiel"),
          leading: IconButton(
              onPressed: () {
                //TODO: Spiel speichern und so maybe verlassen
              },
              icon: Icon(Icons.save)),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(
          
          currentIndex: gameState.currentScreen,
          items: bottomNavigationBarItems,
          onTap: (screenNumber) => BlocProvider.of<GameBloc>(context)
              .add(ChangeGameScreenEvent(screenNumber: screenNumber)),
        ),
        body: getCurrentScreen(
          currentScreenIndex: gameState.currentScreen,
          gameState: gameState,
        ),
      );
    });
  }
}

List<BottomNavigationBarItem> getBottomNavigationBarItems({required context}) {
  List<BottomNavigationBarItem> bottomNavigationBarItems = [];
  Color backgroundColor = Theme.of(context).colorScheme.primary;

  bottomNavigationBarItems.add(BottomNavigationBarItem(
      icon: Icon(
        Icons.person,
      ),
      label: 'Gäste',
      backgroundColor: backgroundColor));
  bottomNavigationBarItems.add(BottomNavigationBarItem(
      icon: Icon(Icons.room),
      label: 'Räume',
      backgroundColor: backgroundColor));
  bottomNavigationBarItems.add(BottomNavigationBarItem(
      icon: Icon(MdiIcons.knife),
      label: 'Waffen',
      backgroundColor: backgroundColor));
  bottomNavigationBarItems.add(BottomNavigationBarItem(
      icon: Icon(MdiIcons.textBox),
      label: 'Überblick',
      backgroundColor: backgroundColor));
  return bottomNavigationBarItems;
}

Widget getCurrentScreen(
    {required int currentScreenIndex, required GameState gameState}) {
  switch (currentScreenIndex) {
    case 0:
      return GuestBody(gameState: gameState);
    case 1:
      return LocationBody(gameState: gameState);
    case 2:
      return WeaponBody(gameState: gameState);
    case 3:
      return OverviewBody(gameState: gameState);
    default:
      return GuestBody(gameState: gameState);
  }
}
