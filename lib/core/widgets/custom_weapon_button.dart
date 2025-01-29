import 'package:cluedo_neu/infrastructure/models/weapon.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomWeaponButton extends StatelessWidget {
  final Weapon weapon;
  final Function callback;
  final Color? highlightColor;
  const CustomWeaponButton({
    super.key,
    required this.weapon,
    required this.callback,
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
            Row(
              children: [
                Gap(10),
                weapon.icon,
                Gap(10),
                Text(weapon.weaponName.name,
                    style: themeData.textTheme.labelLarge),
              ],
            ),
            if (weapon.checked) ...[
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Icon(MdiIcons.alphaX),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
