import 'package:equatable/equatable.dart';

class Food extends Equatable {
  final String name;
  final String restaurantAddress;
  final String distance;
  final String travelingTime;
  final List<String> tags;
  final String image;

  const Food(
      {required this.name,
      required this.restaurantAddress,
      required this.distance,
      required this.travelingTime,
      required this.tags,
      required this.image});

  factory Food.fromMap(Map<String, dynamic> map) => Food(
        name: map['name'],
        restaurantAddress: map['restaurantAddress'],
        distance: map['distance'],
        travelingTime: map['travelingTime'],
        tags: map['tags'],
        image: map['image'],
      );

  @override
  List<Object?> get props =>
      [name, restaurantAddress, distance, travelingTime, tags, image];
}
