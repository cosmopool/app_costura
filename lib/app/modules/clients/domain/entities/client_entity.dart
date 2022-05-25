import 'package:equatable/equatable.dart';

class Client extends Equatable {
  String name;
  String phone;
  int bust;
  int bustHeight;
  int waist;
  int hip;
  int shoulderWidth;
  int sleeveLenght;
  int inseam;
  int biceps;
  int pants;

  Client({
    required this.name,
    this.phone = "",
    this.bust = 0,
    this.bustHeight = 0,
    this.waist = 0,
    this.hip = 0,
    this.shoulderWidth = 0,
    this.sleeveLenght = 0,
    this.inseam = 0,
    this.biceps = 0,
    this.pants = 0,
  });

  @override
  List<Object?> get props => [
        name,
        phone,
        bust,
        bustHeight,
        waist,
        hip,
        shoulderWidth,
        sleeveLenght,
        inseam,
        biceps,
        pants
      ];
}
