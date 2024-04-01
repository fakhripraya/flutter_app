import 'package:app_core/app_core.dart';
import 'package:capp_case/src/core/constants/image_asset_path.dart';
import 'package:capp_case/src/core/utils/validators.dart';
import 'package:capp_case/src/presentation/components/capp_text_form_field.dart';
import 'package:capp_case/src/presentation/screens/login/bloc/login_bloc.dart';
import 'package:capp_case/src/presentation/screens/login/bloc/login_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});
  final String _email = '';
  final String _password = '';

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final String _email = '';
  String _password = '';

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
            onChanged: (value) =>
                context.read<LoginBloc>().add(LoginValidateEmail(value),
            onSaved: (value) => _email = value ?? '',
            validator: (value) {
              return null;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CAPPTextFormField(
            label: 'Password',
            hintText: 'Enter your password',
            isPassword: true,
            onSaved: (value) => _password = value ?? '',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              if (value.length < 6) {
                return 'Password must be at least 6 characters long';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 32,
          ),
          Container(
            constraints: const BoxConstraints(minHeight: 58),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
              ),
              onPressed: () {
                context
                    .read<LoginBloc>()
                    .add(const LoginDoLoginOrRegister(RegisterModel()));
              },
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'LOGIN/SIGN UP',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _submitForm() {
    if (_formKey.currentState?.validate() ?? false) {
      _formKey.currentState?.save();
      // Kini _email dan _password berisi nilai dari formulir yang valid
      // Anda dapat meneruskannya ke bloc atau melakukan operasi lainnya di sini
    }
  }
}
