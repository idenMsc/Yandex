part of 'category_bloc.dart';

abstract class CategoryState extends Equatable {
  const CategoryState();

  @override
  List<Object> get props => [];
}

class CategoryInitial extends CategoryState {}

class CategoryLoading extends CategoryState {}

class CategoryLoaded extends CategoryState {
  final List<Category> categories;

  const CategoryLoaded({required this.categories});

  @override
  List<Object> get props => [categories];
}

class CategoryError extends CategoryState {
  final String message;

  const CategoryError({required this.message});

  @override
  List<Object> get props => [message];
}
