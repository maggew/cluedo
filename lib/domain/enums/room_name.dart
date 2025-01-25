enum RoomName {
  kueche(name: "Küche"),
  terrasse(name: "Terasse"),
  wellnessraum(name: "Wellnessraum"),
  speisezimmer(name: "Speisezimmer"),
  schwimmbad(name: "Schwimmbad"),
  heimkino(name: "Heimkino"),
  wohnzimmer(name: "Wohnzimmer"),
  gaestehause(name: "Gästehaus"),
  halle(name: "Halle"),
  observatorium(name: "Observatorium");

  final String name;

  const RoomName({required this.name});
}
