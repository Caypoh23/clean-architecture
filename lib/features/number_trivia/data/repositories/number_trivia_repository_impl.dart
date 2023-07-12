// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:architecture/core/error/failture.dart';
import 'package:architecture/core/platform/netword_info.dart';
import 'package:architecture/features/number_trivia/data/data_sources/number_trivia_local_data_source.dart';
import 'package:architecture/features/number_trivia/data/data_sources/number_trivia_remote_data_source.dart';
import 'package:architecture/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:architecture/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class NumberTriviaRepositoryImpl implements NumberTriviaRepository {
  final NumberTriviaRemoteDataSource remoteDataSource;
  final NumberTriviaLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  NumberTriviaRepositoryImpl(
      {required this.remoteDataSource,
      required this.localDataSource,
      required this.networkInfo});

  @override
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number) {
    // TODO: implement getConcreteNumberTrivia
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia() {
    // TODO: implement getRandomNumberTrivia
    throw UnimplementedError();
  }
}
