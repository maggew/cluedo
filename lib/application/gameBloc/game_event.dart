part of 'game_bloc.dart';

@immutable
sealed class GameEvent extends Equatable {
  const GameEvent();

  @override
  List<Object> get props => [];
}

class ChangePlayerNumberEvent extends GameEvent {
  final int playerNumber;

  const ChangePlayerNumberEvent({required this.playerNumber});
}

class LockPlayersEvent extends GameEvent {
  final List<Player> players;

  const LockPlayersEvent({required this.players});
}

class UpdateErrorMessageEvent extends GameEvent {
  final String? errorMessage;

  const UpdateErrorMessageEvent({required this.errorMessage});
}

class SelectYourselfEvent extends GameEvent {
  final int selectedPlayer;

  const SelectYourselfEvent({required this.selectedPlayer});
}

class ChangeGameScreenEvent extends GameEvent {
  final int screenNumber;

  const ChangeGameScreenEvent({required this.screenNumber});
}

class CheckRoomEvent extends GameEvent {
  final Room room;

  const CheckRoomEvent({required this.room});
}

class CheckWeaponEvent extends GameEvent {
  final Weapon weapon;

  const CheckWeaponEvent({required this.weapon});
}

class AssignPlayerCardEvent extends GameEvent {
  final card;
  final String playerName;

  const AssignPlayerCardEvent({required this.card, required this.playerName});
}
