import 'package:architecture/features/number_trivia/presentation/bloc/number_trivia_bloc.dart';
import 'package:architecture/features/number_trivia/presentation/widgets/loading_widget.dart';
import 'package:architecture/features/number_trivia/presentation/widgets/message_display.dart';
import 'package:architecture/features/number_trivia/presentation/widgets/trivia_controls.dart';
import 'package:architecture/features/number_trivia/presentation/widgets/trivia_display.dart';
import 'package:architecture/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NumberTriviaPage extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number Trivia'),
      ),
      body: BlocProvider(
        create: (_) => sl<NumberTriviaBloc>(),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(height: 10),
                // Top half
                BlocBuilder<NumberTriviaBloc, NumberTriviaState>(
                  builder: (context, state) {
                    if (state is Empty) {
                      return MessageDisplay(
                        message: 'Start searching!',
                      );
                    } else if (state is Loading) {
                      return LoadingWidget();
                    } else if (state is Loaded) {
                      return TriviaDisplay(
                        numberTrivia: state.trivia,
                      );
                    } else if (state is Error) {
                      return MessageDisplay(
                        message: state.message,
                      );
                    } else {
                      return MessageDisplay(
                        message: 'Something went wrong!',
                      );
                    }
                  },
                ),
                SizedBox(height: 20),
                // Bottom half
                TriviaControls(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
