part of 'signup_cubit.dart';

@immutable
abstract class SignupState {}

class SignupInitialState extends SignupState {}
class SignupLoadingState extends SignupState {}
class SignupSuccessState extends SignupState {}
class SignupErrorState extends SignupState {}
