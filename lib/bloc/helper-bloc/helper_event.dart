part of 'helper_bloc.dart';

class HelperEvent extends Equatable {
  const HelperEvent();

  @override
  List<Object> get props => [];
}

class FirstHelper extends HelperEvent {
  final String data;

  const FirstHelper({required this.data});

  @override
  // TODO: implement props
  List<Object> get props => [data];
}

class SecondHelper extends HelperEvent {
  final String data;

  const SecondHelper({required this.data});

  @override
  // TODO: implement props
  List<Object> get props => [data];
}

class ThirdHelper extends HelperEvent {
  final String data;

  const ThirdHelper({required this.data});

  @override
  // TODO: implement props
  List<Object> get props => [data];
}

class FourthHelper extends HelperEvent {
  final String data;

  const FourthHelper({required this.data});

  @override
  // TODO: implement props
  List<Object> get props => [data];
}
