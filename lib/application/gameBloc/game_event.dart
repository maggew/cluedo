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
  final List<String> playerNames;

  const LockPlayersEvent({required this.playerNames});
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

class CheckDataEvent extends GameEvent {
  final CategoryName categoryName;
  final int listIndex;


  const CheckDataEvent({
    required this.categoryName,
    required this.listIndex,
 
  });
}
