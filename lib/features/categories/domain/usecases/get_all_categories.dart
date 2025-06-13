import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../../../finance_shmr/lib/core/usecases/usecase.dart';
import '../../data/models/category_model.dart';
import '../repositories/category_repository.dart';

class GetAllCategories extends UseCase<List<Category>, NoParams> {

  final CategoryRepository repository;

  GetAllCategories(this.repository);

  @override
  FutureEither<List<Category>> call(NoParams params) async {
    return await repository.getAllCategories();
  }
}