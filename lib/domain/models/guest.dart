import '../enums/guest_name.dart';

class Guest {
  GuestName guestName;
  bool checked = false;

  Guest({
    required this.guestName
  });

  check(){
    checked = true;
  }

  unCheck(){
    checked = false;
  }
  
}