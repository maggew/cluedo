class CreateGameErrorMessages {
  String getErrorMessage(
      {required String? errorMessage, required bool yourPlayerIsSelected}) {
    if (errorMessage != null) {
      return errorMessage;
    }
    return "Wähle dich als Spieler aus";
  }
}
