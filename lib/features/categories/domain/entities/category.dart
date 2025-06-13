import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final int id;
  final String name;
  final String emoji;
  final bool IsIncome;

  const Category(
      {required this.id,
      required this.name,
      required this.emoji,
      required this.IsIncome
      });

  @override
  List<Object> get props => [id, name, emoji, IsIncome];

}
