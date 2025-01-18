import 'package:cluedo_neu/application/gameBloc/game_bloc.dart';
import 'package:cluedo_neu/presentation/routes/router.dart';
import 'package:cluedo_neu/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cluedo_neu/injection.dart' as di;
import 'package:cluedo_neu/injection.dart';

void main() async {
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: ((context)=> sl<GameBloc>())),
      ],
      child: MaterialApp.router(
        title: 'Cluedo',
        routerConfig: _appRouter.config(),
        theme: AppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

//! Command for generating routes by auto_router:   dart run build_runner build