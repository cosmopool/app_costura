import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'client_entity.g.dart';

@HiveType(typeId: 1)
class Client extends Equatable {
  final int _id;

  @HiveField(1)
  String name;

  @HiveField(2, defaultValue: "")
  String phone;

  @HiveField(3, defaultValue: 0)
  int bust;

  @HiveField(4, defaultValue: 0)
  int bustHeight;

  @HiveField(5, defaultValue: 0)
  int waist;

  @HiveField(6, defaultValue: 0)
  int hip;

  @HiveField(7, defaultValue: 0)
  int shoulderWidth;

  @HiveField(8, defaultValue: 0)
  int sleeveLenght;

  @HiveField(9, defaultValue: 0)
  int inseam;

  @HiveField(10, defaultValue: 0)
  int biceps;

  @HiveField(11, defaultValue: 0)
  int pants;

  @HiveField(12, defaultValue: 0)
  int torso;

  Client({
    id = -1,
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
    this.torso = 0,
  }) : _id = id;

  @HiveField(0)
  int get id => _id;

  /// Returns a copy of the client with new id
  Client copyWith({
    required int id,
  }) {
    return Client(
      id: id,
      name: name,
      phone: phone,
      bust: bust,
      bustHeight: bustHeight,
      waist: waist,
      hip: hip,
      shoulderWidth: shoulderWidth,
      sleeveLenght: sleeveLenght,
      inseam: inseam,
      biceps: biceps,
      pants: pants,
      torso: torso,
    );
  }

  @override
  List<Object?> get props => [
        _id,
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
        pants,
        torso,
      ];
}
