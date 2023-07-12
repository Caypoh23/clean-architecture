// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:clean_architecture/core/error/failture.dart';
import 'package:clean_architecture/features/number_trivia/domain/entities/number_trivia.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}
