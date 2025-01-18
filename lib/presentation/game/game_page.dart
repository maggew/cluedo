import 'package:auto_route/auto_route.dart';
import 'package:cluedo_neu/application/gameBloc/game_bloc.dart';
import 'package:cluedo_neu/presentation/game/widgets/game_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GameBloc, GameState>(
        bloc: BlocProvider.of<GameBloc>(context),
        builder: (context, state) {
          return GameBody();
        }, 
      ),
    );
  }
}
