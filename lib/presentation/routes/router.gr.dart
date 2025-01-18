// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:cluedo_neu/presentation/createGame/create_game_page.dart'
    as _i1;
import 'package:cluedo_neu/presentation/game/game_page.dart' as _i2;
import 'package:cluedo_neu/presentation/home/home_page.dart' as _i3;

/// generated route for
/// [_i1.CreateGamePage]
class CreateGameRoute extends _i4.PageRouteInfo<void> {
  const CreateGameRoute({List<_i4.PageRouteInfo>? children})
    : super(CreateGameRoute.name, initialChildren: children);

  static const String name = 'CreateGameRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.CreateGamePage();
    },
  );
}

/// generated route for
/// [_i2.GamePage]
class GameRoute extends _i4.PageRouteInfo<void> {
  const GameRoute({List<_i4.PageRouteInfo>? children})
    : super(GameRoute.name, initialChildren: children);

  static const String name = 'GameRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.GamePage();
    },
  );
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomeScreen();
    },
  );
}
