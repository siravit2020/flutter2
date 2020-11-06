// To parse this JSON data, do
//
//     final login = loginFromJson(jsonString);

import 'dart:convert';

Login loginFromJson(String str) => Login.fromJson(json.decode(str));

String loginToJson(Login data) => json.encode(data.toJson());

class Login {
  Login({
    this.name,
    this.pass,
  });

  String name;
  String pass;

  factory Login.fromJson(Map<String, dynamic> json) => Login(
    name: json["name"],
    pass: json["pass"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "pass": pass,
  };
}
