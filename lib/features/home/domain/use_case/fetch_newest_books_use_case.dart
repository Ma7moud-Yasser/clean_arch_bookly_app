import 'package:clean_arch_bookly_app/core/error/failure.dart';
import 'package:clean_arch_bookly_app/core/use_case/use_case.dart';
import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:clean_arch_bookly_app/features/home/domain/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity>, void> {
  final HomeRepo _repository;

  FetchNewestBooksUseCase(this._repository);
  @override
  Future<Either<Failure, List<BookEntity>>> call([void params]) {
    return _repository.fetchNewestBooks();
  }
}
