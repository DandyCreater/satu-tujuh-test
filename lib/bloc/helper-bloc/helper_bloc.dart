import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../helper.dart';

part 'helper_event.dart';
part 'helper_state.dart';

class HelperBloc extends Bloc<HelperEvent, HelperState> {
  HelperBloc() : super(HelperInitial()) {
    on<FirstHelper>((event, emit) {
      Helper helper = Helper();

      final result = helper.firstFunction(event.data);
      emit(HelperSuccess(data: result));
    });

    on<SecondHelper>((event, emit) {
      Helper helper = Helper();

      final result = helper.secondFunction(event.data);
      emit(HelperSuccess(data: result));
    });

    on<ThirdHelper>((event, emit) {
      Helper helper = Helper();

      final result = helper.thirdFunction(event.data);
      emit(HelperSuccess(data: result));
    });

    on<FourthHelper>((event, emit) {
      Helper helper = Helper();

      final result = helper.fourthFunction(event.data);
      emit(HelperSuccess(data: result));
    });
  }
}
