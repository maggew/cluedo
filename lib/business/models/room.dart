import 'package:cluedo_neu/business/enums/room_name.dart';
import 'package:cluedo_neu/business/models/check.dart';

class Room extends Check{
  final RoomName roomName;
  String? playerName;

  Room({
    required this.roomName,
  }) : super(false);

}
