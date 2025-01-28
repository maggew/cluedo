import 'package:cluedo_neu/application/gameBloc/game_bloc.dart';
import 'package:cluedo_neu/infrastructure/models/room.dart';
import 'package:flutter/material.dart';

class CustomRoomButton extends StatelessWidget {
  final Room room;
  final Function callback;
  final Color? highlightColor;
  final GameState gameState;
  const CustomRoomButton({
    super.key,
    required this.room,
    required this.callback,
    required this.gameState,
    this.highlightColor,
  });

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return InkResponse(
      onTap: () => callback(),
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
          color: (highlightColor == null)
              ? themeData.colorScheme.primary
              : highlightColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(room.roomName.name, style: themeData.textTheme.labelLarge),
            if (room.checked) ...[
              Icon(Icons.check),
            ],
          ],
        ),
      ),
    );
  }
}
