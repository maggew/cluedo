import 'package:auto_route/auto_route.dart';
import 'package:cluedo_neu/core/validators/validate_player_names.dart';
import 'package:cluedo_neu/presentation/createGame/widgets/create_game_body.dart';
import 'package:cluedo_neu/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:cluedo_neu/application/gameBloc/game_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CreateGamePage extends StatelessWidget {
  const CreateGamePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController1 =
        TextEditingController();
    final TextEditingController textEditingController2 =
        TextEditingController();
    final TextEditingController textEditingController3 =
        TextEditingController();
    final TextEditingController textEditingController4 =
        TextEditingController();
    final TextEditingController textEditingController5 =
        TextEditingController();
    final TextEditingController textEditingController6 =
        TextEditingController();
    List<TextEditingController> textEditingControllers = [
      textEditingController1,
      textEditingController2,
      textEditingController3,
      textEditingController4,
      textEditingController5,
      textEditingController6,
    ];

    final ThemeData themeData = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("Spiel erstellen"),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            GameBloc gameBloc = BlocProvider.of<GameBloc>(context);
            List<String> playerNames = [];
            for (int i = 0; i < gameBloc.state.playerNumber; i++) {
              playerNames.add(textEditingControllers[i].text);
            }

            String? errorMessage =
                PlayerValidation().validatePlayerList(playerNames);

            if (errorMessage == null) {
              gameBloc.add(LockPlayersEvent(playerNames: playerNames));
              AutoRouter.of(context).replace(const GameRoute());
            } else {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Center(child: Text(errorMessage)),
                backgroundColor: Colors.red.shade400,
              ));
            }
          },
          backgroundColor: themeData.colorScheme.onPrimary,
          child: Icon(
            Icons.check,
            color: Colors.white70,
          ),
        ),
        body: BlocBuilder<GameBloc, GameState>(
          builder: (context, gameState) {
            return CreateGameBody(
              gameState: gameState,
              textEditingControllers: textEditingControllers,
            );
          },
        ));
  }
}
