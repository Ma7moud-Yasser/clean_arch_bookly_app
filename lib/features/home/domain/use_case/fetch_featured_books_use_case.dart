import 'package:clean_arch_bookly_app/core/error/failure.dart';
import 'package:clean_arch_bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:clean_arch_bookly_app/features/home/domain/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase {
  final HomeRepo _repository;

  FetchFeaturedBooksUseCase(this._repository);

  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() {
    // check permissions
    // if permissions are not granted, return a failure
    // if permissions are granted, proceed to fetch featured books
    // For simplicity, we assume permissions are always granted in this example.
    // In a real application, you would implement permission checks here.
    // Example:
    // if (!permissionsGranted) {
    //   return Left(PermissionFailure());
    // }
    return _repository.fetchFeaturedBooks();
  }
}
