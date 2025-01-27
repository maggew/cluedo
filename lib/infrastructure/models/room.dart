import 'package:cluedo_neu/domain/enums/room_name.dart';

class Room {
  final RoomName roomName;
  final bool checked;
  final String? playerWhichHoldsCard;

  const Room({
    required this.roomName,
    required this.checked,
    required this.playerWhichHoldsCard,
  });

  Room copyWith({
    bool? checked,
    String? playerWhichHoldsCard,
  }) {
    return Room(
      checked: checked ?? this.checked,
      playerWhichHoldsCard: playerWhichHoldsCard ?? this.playerWhichHoldsCard,
      roomName: roomName,
    );
  }
}
