import 'package:flutter_bloc/flutter_bloc.dart';

part 'splash_screen_event.dart';
part 'splash_screen_state.dart';

class SplashScreenBloc extends Bloc<SplashEvent, SplashState> {
  SplashScreenBloc() : super(SplashInitialState()) {
    on<SplashEvent>((event, emit) async {
      await Future.delayed(const Duration(seconds: 2));
      emit(SplashLoadedState());
    });
  }
}
