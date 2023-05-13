import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sas/constants.dart';
import 'package:sas/register/data/remote/dio_helper.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);
  DioHelper dioHelper = DioHelper();

  Future<void> login(String userName, String password) async {
    emit(LoginLoadingState());
    await dioHelper.postData(endPoint: loginEndPoint, body: {
      'username':userName,
      'password':password,
    }).then((value) {
      print("Success");
      print(value.data);
      emit(LoginSuccessState());
    }).catchError((error) {
      print("Login Error is $error");
      emit(LoginErrorState());
    });
  }
}
