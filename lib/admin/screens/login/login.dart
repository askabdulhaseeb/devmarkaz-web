import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../utilities/app_images.dart';
import '../../../utilities/custom_validators.dart';
import '../../../utilities/utilities.dart';
import '../../database/auth_method.dart';
import '../../widgets/custom_textformfield.dart';
import '../../widgets/password_textformfield.dart';
import '../dashboard/dashboard.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({Key? key}) : super(key: key);
  static const String route = 'admin';
  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      body: Form(
        key: _key,
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(Utilities.padding),
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset(
                    AppImages.logoBlack,
                  ),
                ),
              ),
              CustomTextFormField(
                controller: _email,
                hint: 'email@gmail.com',
                validator: (String? value) => CustomValidator.email(value),
              ),
              PasswordTextFormField(controller: _password),
              ElevatedButton(
                onPressed: () => _login(),
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _login() async {
    if (_key.currentState!.validate()) {
      final User? user = await AuthMethods().loginWithEmailAndPassword(
        _email.text.trim(),
        _password.text.trim(),
      );
      if (user != null) {
        if (!mounted) return;
        GoRouter.of(context).go('/${Dashboard.route}');
      }
    }
  }
}
