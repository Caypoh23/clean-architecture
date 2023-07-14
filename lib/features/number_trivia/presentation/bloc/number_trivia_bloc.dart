// Package imports:
import 'package:architecture/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'number_trivia_event.dart';
part 'number_trivia_state.dart';

class NumberTriviaBloc extends Bloc<NumberTriviaEvent, NumberTriviaState> {
  //
  NumberTriviaBloc() : super(Empty()) {
    on<NumberTriviaEvent>((event, emit) {});
  }
}
