// To parse this JSON data, do
//
//     final userModelTemporary = userModelTemporaryFromJson(jsonString);

import 'dart:convert';

import 'package:mongo_dart/mongo_dart.dart';

UserModelTemporary userModelTemporaryFromJson(String str) => UserModelTemporary.fromJson(json.decode(str));

String userModelTemporaryToJson(UserModelTemporary data) => json.encode(data.toJson());

class UserModelTemporary {
    ObjectId id;
    String name;
    String emel;
    String role;
    String password;

    UserModelTemporary({
        required this.id,
        required this.name,
        required this.emel, 
        required this.role,
        required this.password,
    });

    factory UserModelTemporary.fromJson(Map<String, dynamic> json) => UserModelTemporary(
        id: json["_id"],
        name: json["name"],
        emel: json["emel"],
        role: json["role"],
        password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "emel": emel,
        "role": role,
        "password": password,
    };
}
