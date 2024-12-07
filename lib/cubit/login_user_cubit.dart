import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import '../data/repo/login_repo.dart';
import 'login_user_state.dart';


class LoginUserCubit extends Cubit<UserState> {
  final LoginRepository loginRepository;
  TextEditingController emailController =  TextEditingController() ;
  TextEditingController passwordController =  TextEditingController() ;
  GlobalKey<FormState> loginFormKey = GlobalKey();


  LoginUserCubit(this.loginRepository) : super(UserInitial());
  signIn() async {
    emit(SignInLoading());
    final response = await loginRepository.signIn(
      email: emailController.text,
      password: passwordController.text,
    );
    response.fold(
          (errMessage) => emit(SignInFailure(errMessage: errMessage)),
          (signInModel) => emit(SignInSuccess()),
    );
  }

}
