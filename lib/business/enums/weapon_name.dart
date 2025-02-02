import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

enum WeaponName {
  pistole(name: "Pistole"),
  kerzenleuchter(name: "Kerzenleuchter"),
  seil(name: "Seil"),
  messer(name: "Messer"),
  keule(name: "Keule"),
  axt(name: "Axt"),
  hantel(name: "Hantel"),
  trophaee(name: "Trophäe"),
  gift(name: "Gift");

  final String name;

  const WeaponName({required this.name});
}

Icon mapWeaponIcon({required WeaponName weapon}){
  switch (weapon) {
    case WeaponName.pistole:
      return Icon(MdiIcons.pistol);
    case WeaponName.kerzenleuchter:
      return Icon(MdiIcons.chandelier);
    case WeaponName.seil:
      return Icon(MdiIcons.jumpRope);
    case WeaponName.messer:
      return Icon(MdiIcons.knife);
    case WeaponName.keule:
      return Icon(MdiIcons.mace);
    case WeaponName.axt:
      return Icon(MdiIcons.axe);
    case WeaponName.hantel:
      return Icon(MdiIcons.dumbbell);
    case WeaponName.trophaee:
      return Icon(MdiIcons.trophy);
    case WeaponName.gift:
      return Icon(MdiIcons.bottleTonicSkull);
  }
}