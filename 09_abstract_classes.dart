void main() {
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  print('Wind plant: ${chargePhone(windPlant)}');
  print('Nuclear plant: ${chargePhone(nuclearPlant)}');
}

// This function only works if you send as parameter
// an instance extending from EnergyPlant
double chargePhone(EnergyPlant plant) {
  print(plant);
  final int costToCharge = 10;

  if (plant.energyLeft < costToCharge) {
    throw Exception('Not enough energy');
  }

  return plant.energyLeft - costToCharge;
}

// Enum for restrict the plant types in EnergyPlant class
enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type; // nuclear, wind, water

  EnergyPlant({required this.energyLeft, required this.type});

  // Note that we don't define the method
  // We just need to create it
  void consumeEnergy(double amount);
}

// With extends you must use all the methods of the principal class
class WindPlant extends EnergyPlant {
  // Normal constructor with one parameter (initialEnergy)
  WindPlant({required double initialEnergy})
      // Required parameter for EnergyPlant class (energyLeft and type)
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  // Use @override to indicate that we are overriding the method
  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

// With implements you can use one or more methods of the principal class
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  // Use @override to indicate that we are overriding the method
  @override
  void consumeEnergy(double amount) {
    // We change the result just for an example
    energyLeft -= (amount * 0.5);
  }
}
