import 'package:boostorder_interview/features/categories/domain/entities/categories_entity.dart';

class CategoriesModel extends CategoriesEntity {
  const CategoriesModel({
    required super.id,
    required super.name,
  });

  factory CategoriesModel.fromMap(Map<String, dynamic> map) {
    return CategoriesModel(
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }

  factory CategoriesModel.fromEntity(CategoriesEntity entity) {
    return CategoriesModel(
      id: entity.id,
      name: entity.name,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  CategoriesEntity toEntity() {
    return CategoriesEntity(
      id: id,
      name: name,
    );
  }
}
