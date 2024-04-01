import 'package:app_core/app_core.dart';
import 'package:capp_case/src/core/constants/image_asset_path.dart';
import 'package:capp_case/src/presentation/components/capp_button.dart';
import 'package:capp_case/src/presentation/components/capp_dialog_loading.dart';
import 'package:capp_case/src/presentation/components/capp_text_form_field.dart';
import 'package:capp_case/src/presentation/screens/login/bloc/login_bloc.dart';
import 'package:capp_case/src/presentation/screens/login/bloc/login_event.dart';
import 'package:capp_case/src/presentation/screens/login/bloc/login_state.dart';
import 'package:capp_case/src/utils/form_validator.dart';
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
                  return const LoadingDialog(message: 'Mohon tunggu...');
                },
              );
            } else {
              Navigator.of(context).pop();
              if (state.errorMessage.isNotEmpty) {
                final snackBar = SnackBar(content: Text(state.errorMessage));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            }
          },
          child: ListView(
            children: [
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                width: 163,
                height: 163,
                child: Image.asset(
                  ImageAssetPath.icon_money,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              const LoginForm(),
              const SizedBox(
                height: 32,
              ),
              Container(
                width: double.infinity,
                constraints: const BoxConstraints(minHeight: 58),
                child: ElevatedButton.icon(
                  icon: SizedBox(
                    width: 30,
                    height: 30,
                    child: Image.asset(
                      ImageAssetPath.icon_google,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                  ),
                  onPressed: () {
                    context
                        .read<LoginBloc>()
                        .add(const LoginDoLoginOrRegisterWithGoogle());
                  },
                  label: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'LOGIN WITH GOOGLE',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
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
      child: Column(
        children: [
          CAPPTextFormField(
            label: 'Email',
            hintText: 'Enter your email',
            isPassword: false,
            onSaved: (value) {
              _email = value ?? '';
            },
            onChanged: (value) => _formKey.currentState?.validate(),
            validator: emailValidator.validate,
          ),
          const SizedBox(
            height: 16,
          ),
          CAPPTextFormField(
            label: 'Password',
            hintText: 'Enter your password',
            isPassword: true,
            onSaved: (value) {
              _password = value ?? '';
            },
            onChanged: (value) => _formKey.currentState?.validate(),
            validator: passwordValidator.validate,
          ),
          const SizedBox(
            height: 32,
          ),
          CAPPElevatedButton(
            onPressed: _submitForm,
            text: 'LOGIN/SIGN UP',
          ),
        ],
      ),
    );
  }

  void _submitForm() {
    if (_formKey.currentState?.validate() ?? false) {
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
