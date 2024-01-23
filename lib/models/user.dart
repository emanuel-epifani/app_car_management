import 'dart:convert';

CarManagementUser carManagementUserFromJson(String str) =>
    CarManagementUser.fromJson(json.decode(str));

String insuranceToJson(CarManagementUser data) => json.encode(data.toJson());

class CarManagementUser {
  String id;
  String name;

  CarManagementUser({
    required this.id,
    required this.name,
  });

  factory CarManagementUser.fromJson(Map<String, dynamic> json) =>
      CarManagementUser(
        id: json['id'],
        name: json['name'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };

  CarManagementUser copyWith({
    String? id,
    String? name,
  }) {
    return CarManagementUser(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }
}
