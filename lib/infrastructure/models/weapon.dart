
import 'package:cluedo_neu/domain/enums/weapon_name.dart';

class Weapon {
  final WeaponName weaponName;
  final bool checked;
  final String? playerWhichHoldsCard;

  const Weapon({
    required this.weaponName,
    required this.checked,
    required this.playerWhichHoldsCard,
  });

  Weapon copyWith({
    bool? checked,
    String? playerWhichHoldsCard,
  }) {
    return Weapon(
      checked: checked ?? this.checked,
      playerWhichHoldsCard: playerWhichHoldsCard ?? this.playerWhichHoldsCard,
      weaponName: weaponName,
    );
  }
}
