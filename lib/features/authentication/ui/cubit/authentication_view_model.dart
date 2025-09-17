import 'package:academy/features/authentication/domain/entity/register_request_body.dart';
import 'package:bloc/bloc.dart';
import 'package:academy/features/authentication/domain/use%20case/register_use_case.dart';
import 'package:academy/features/authentication/ui/cubit/authentication_states.dart';
import 'package:flutter/material.dart';

class AuthViewModel extends Cubit<AuthStates> {
  RegisterUseCase authUseCase;
  AuthViewModel({required this.authUseCase}) : super(InitState());

  final emailController = TextEditingController(text: 'amr212432@gmail.com');
  final nameController = TextEditingController(text: 'khalidMohammed');
  final phoneController = TextEditingController(text: '+201141209334');
  final passwordController = TextEditingController(text: 'Amr2510@');
  final formKey = GlobalKey<FormState>();

  late RegisterRequestBody registerRequestBody;

  register() async {
    if (formKey.currentState?.validate() == true) {
      emit(ShowLoading());
      registerRequestBody = RegisterRequestBody(
        userName: nameController.text,
        email: emailController.text,
        password: passwordController.text,
      );
      var either = await authUseCase.registerInvoke(registerRequestBody);
      either.fold(
        (left) => emit(ErrorState(errorMessage: left.errorMessage)),
        (right) => emit(SuccessState(response: right)),
      );
    }
  }
}
