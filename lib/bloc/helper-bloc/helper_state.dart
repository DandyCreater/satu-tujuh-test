part of 'helper_bloc.dart';

class HelperState extends Equatable {
  const HelperState();

  @override
  List<Object> get props => [];
}

class HelperInitial extends HelperState {}

class HelperSuccess extends HelperState {
  final String? data;

  const HelperSuccess({required this.data});

  @override
  // TODO: implement props
  List<Object> get props => [data!];
}
