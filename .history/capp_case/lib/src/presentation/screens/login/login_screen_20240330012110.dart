import 'package:app_core/app_core.dart';
import 'package:capp_case/src/core/constants/constants.dart';
import 'package:capp_case/src/core/constants/image_asset_path.dart';
import 'package:capp_case/src/presentation/components/capp_button.dart';
import 'package:capp_case/src/presentation/components/capp_dialog_loading.dart';
import 'package:capp_case/src/presentation/components/capp_text_form_field.dart';
import 'package:capp_case/src/presentation/screens/login/bloc/login_bloc.dart';
import 'package:capp_case/src/presentation/screens/login/bloc/login_event.dart';
import 'package:capp_case/src/presentation/screens/login/bloc/login_state.dart';
import 'package:capp_case/src/core/utils/form_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state.isLoading) {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return PopScope(
                    canPop: false,
                    onPopInvoked: (didPop) {
                      if (didPop) return;
                    },
                    child: const LoadingDialog(
                      message: LoginConstants.loading,
                    ),
                  );
                },
              );
            }
            if (state.errorMessage.isNotEmpty) {
              final snackBar = SnackBar(content: Text(state.errorMessage));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
          },
          child: LayoutBuilder(builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 32,
                      ),
                      SizedBox(
                        width: 163,
                        height: 163,
                        child: Image.asset(
                          ImageAssetPath.money,
                        ),
                      ),
                      const Spacer(),
                      const LoginForm(),
                      const Spacer(),
                      CAPPElevatedButton(
                        onPressed: () {
                          context
                              .read<LoginBloc>()
                              .add(const LoginDoLoginOrRegisterWithGoogle());
                        },
                        text: LoginConstants.loginWithGoogle,
                        icon: SizedBox(
                          width: 30,
                          height: 30,
                          child: Image.asset(
                            ImageAssetPath.google,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';

  final Validator<String> emailValidator = EmailValidator();
  final Validator<String> passwordValidator = PasswordValidator();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          CAPPTextFormField(
            label: LoginConstants.emailLabel,
            hintText: LoginConstants.emailHint,
            isPassword: false,
            onSaved: (value) {
              _email = value ?? '';
            },
            onChanged: (value) {
              setState(() {
                _email = value; // Update the value
              });
            },
            validator: emailValidator.validate,
          ),
          const SizedBox(
            height: 16,
          ),
          CAPPTextFormField(
            label: LoginConstants.passwordLabel,
            hintText: LoginConstants.passwordHint,
            isPassword: true,
            onSaved: (value) {
              _password = value ?? '';
            },
            onChanged: (value) {
              setState(() {
                _password = value; // Update the value
              });
            },
            validator: passwordValidator.validate,
          ),
          const SizedBox(
            height: 32,
          ),
          CAPPElevatedButton(
            onPressed: _submitForm,
            text: LoginConstants.loginOrRegister,
            textColor: Colors.white,
            backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }

  void _submitForm() {
    if (_formKey.currentState?.validate() ?? false) {
      _formKey.currentState?.save();
      context.read<LoginBloc>().add(
            LoginDoLoginOrRegister(
              RegisterModel(
                email: _email,
                password: _password,
              ),
            ),
          );
    }
  }
}
