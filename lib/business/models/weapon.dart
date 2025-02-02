
import 'package:cluedo_neu/business/enums/weapon_name.dart';
import 'package:cluedo_neu/business/models/check.dart';
import 'package:flutter/material.dart';

class Weapon extends Check{
  WeaponName weaponName;
  Icon icon;
  String? playerWhichHoldsCard;

  Weapon({
    required this.weaponName,
    required this.icon
  }) : super(false);

}
