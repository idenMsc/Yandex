import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/category.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const CategoryModel._();

  const factory CategoryModel({
    required int id,
    required String name,
    required String emoji,
    @JsonKey(name: 'isIncome') required bool isIncome,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);

  Category toEntity() => Category.fromModel(this);
}
