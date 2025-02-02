import 'package:cluedo_neu/business/models/check.dart';

import '../enums/guest_name.dart';

class Guest extends Check{
  GuestName guestName;
  String? playerName;

  Guest({
    required this.guestName
  }) : super(false);
  
}