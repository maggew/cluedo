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
