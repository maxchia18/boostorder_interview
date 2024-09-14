// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class CategoriesEntity extends Equatable {
  final String id;
  final String name;

  const CategoriesEntity({
    required this.id,
    required this.name,
  });

  @override
  List<Object> get props => [id, name];

  CategoriesEntity copyWith({
    String? id,
    String? name,
  }) {
    return CategoriesEntity(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory CategoriesEntity.fromMap(Map<String, dynamic> map) {
    return CategoriesEntity(
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoriesEntity.fromJson(String source) =>
      CategoriesEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;
}
