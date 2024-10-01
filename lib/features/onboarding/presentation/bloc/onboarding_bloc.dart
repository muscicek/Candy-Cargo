import 'package:bloc/bloc.dart';
import 'package:candy_cargo/features/onboarding/presentation/bloc/onboarding_event.dart';
import 'package:candy_cargo/features/onboarding/presentation/bloc/onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(const OnboardingState(0)) {
    on<PageChangedEvent>((event, emit) {
      emit(OnboardingState(event.pageIndex));
    });
  }
}
