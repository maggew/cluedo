import 'package:cluedo_neu/application/gameBloc/game_bloc.dart';
import 'package:cluedo_neu/infrastructure/models/weapon.dart';
import 'package:flutter/material.dart';

class CustomWeaponButton extends StatelessWidget {
  final Weapon weapon;
  final Function callback;
  final Color? highlightColor;
  final GameState gameState;
  const CustomWeaponButton({
    super.key,
    required this.weapon,
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
            Text(weapon.weaponName.name, style: themeData.textTheme.labelLarge),
            if (weapon.checked) ...[
              Icon(Icons.check),
            ],
          ],
        ),
      ),
    );
  }
}
