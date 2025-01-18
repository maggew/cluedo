part of 'game_bloc.dart';

@immutable
sealed class GameEvent extends Equatable{
  const GameEvent();

  @override
  List<Object> get props => [];
}


class ChangePlayerNumberEvent extends GameEvent{
  final int playerNumber;

  const ChangePlayerNumberEvent({required this.playerNumber});
}

class LockPlayersEvent extends GameEvent{
  final List<String> playerNames;

  const LockPlayersEvent({required this.playerNames});
}

class UpdateErrorMessageEvent extends GameEvent{
  final String? errorMessage;

  const UpdateErrorMessageEvent({required this.errorMessage});
}