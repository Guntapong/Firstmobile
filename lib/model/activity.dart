// To parse this JSON data, do
//
//     final ced = cedFromJson(jsonString);

import 'dart:convert';

Ced cedFromJson(String str) => Ced.fromJson(json.decode(str));

String cedToJson(Ced data) => json.encode(data.toJson());

class Ced {
  Ced({
    this.activity,
    this.type,
    this.participants,
    this.price,
    this.link,
    this.key,
    this.accessibility,
  });

  String? activity;
  String? type;
  int? participants;
  double? price;
  String? link;
  String? key;
  double? accessibility;

  factory Ced.fromJson(Map<String, dynamic> json) => Ced(
        activity: json["activity"],
        type: json["type"],
        participants: json["participants"],
        price: json["price"].toDouble(),
        link: json["link"],
        key: json["key"],
        accessibility: json["accessibility"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "activity": activity,
        "type": type,
        "participants": participants,
        "price": price,
        "link": link,
        "key": key,
        "accessibility": accessibility,
      };
}
