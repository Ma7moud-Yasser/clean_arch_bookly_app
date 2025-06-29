import 'package:clean_arch_bookly_app/core/error/failure.dart';
import 'package:clean_arch_bookly_app/core/use_case/use_case.dart';
import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:clean_arch_bookly_app/features/home/domain/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>, void> {
  final HomeRepo _repository;

  FetchFeaturedBooksUseCase(this._repository);

  @override
  Future<Either<Failure, List<BookEntity>>> call([void params]) async {
    return await _repository.fetchFeaturedBooks();
  }
}
