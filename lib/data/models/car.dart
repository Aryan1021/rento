class Car {
  final String model;
  final double distance;
  final double fuelCapacity;
  final double pricePerHour;

  Car({
    required this.model,
    required this.distance,
    required this.fuelCapacity,
    required this.pricePerHour,
  });

  factory Car.fromMap(Map<String, dynamic> map) {
    final distanceValue = map['distance'];
    final double parsedDistance = (distanceValue is int)
        ? distanceValue.toDouble()
        : (distanceValue is double)
        ? distanceValue
        : 0.0;

    print('🔥 Loaded Car: ${map['model']} with distance: $parsedDistance');

    return Car(
      model: map['model'] ?? 'Unknown',
      distance: parsedDistance,
      fuelCapacity: (map['fuelCapacity'] ?? 0).toDouble(),
      pricePerHour: (map['pricePerHour'] ?? 0).toDouble(),
    );
  }
}