import 'package:clean_arch_bookly_app/core/error/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call([Params params]);
}
