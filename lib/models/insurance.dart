import 'dart:convert';

Insurance insuranceFromJson(String str) => Insurance.fromJson(json.decode(str));

String insuranceToJson(Insurance data) => json.encode(data.toJson());

class Insurance {
  String id;
  String name;
  String km;
  int datePayment;
  int dateNextPayment;
  double price;
  String? comment;
  String? billUrl;
  String userId;

  Insurance({
    required this.id,
    required this.name,
    required this.km,
    required this.datePayment,
    required this.dateNextPayment,
    required this.price,
    required this.userId,
    this.comment,
    this.billUrl,
  });

  factory Insurance.fromJson(Map<String, dynamic> json) => Insurance(
        id: json['id'],
        name: json['name'],
        km: json['km'],
        datePayment: json['datePayment'],
        dateNextPayment: json['dateNextPayment'],
        price: json['price']?.toDouble(),
        comment: json['comment'],
        billUrl: json['billUrl'],
        userId: json['userId'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'km': km,
        'datePayment': datePayment,
        'dateNextPayment': dateNextPayment,
        'price': price,
        'comment': comment,
        'billUrl': billUrl,
        'userId': userId,
      };

  Insurance copyWith({
    String? id,
    String? name,
    String? km,
    int? datePayment,
    int? dateNextPayment,
    double? price,
    String? comment,
    String? billUrl,
    String? userId,
  }) {
    return Insurance(
      id: id ?? this.id,
      name: name ?? this.name,
      km: km ?? this.km,
      datePayment: datePayment ?? this.datePayment,
      dateNextPayment: dateNextPayment ?? this.dateNextPayment,
      price: price ?? this.price,
      comment: comment ?? this.comment,
      billUrl: billUrl ?? this.billUrl,
      userId: userId ?? this.userId,
    );
  }
}
