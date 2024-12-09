import 'package:blogapp/core/theme/app_pallete.dart';
import 'package:blogapp/features/auth/presentation/widgets/auth_field.dart';
import 'package:blogapp/features/auth/presentation/widgets/auth_gradientbutton.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign Up.',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            AuthField(hintText: ' Name'),
            SizedBox(
              height: 15,
            ),
            AuthField(hintText: 'Email'),
            SizedBox(
              height: 15,
            ),
            AuthField(hintText: 'Password'),
            const SizedBox(
              height: 20,
            ),
            AuthGradientbutton(),
            const SizedBox(
              height: 20,
            ),
            RichText(
                text: TextSpan(
                    text: 'Don\'t have an account? ',
                    style: Theme.of(context).textTheme.titleMedium,
                    children: [
                  TextSpan(
                      text: 'Sign In',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: AppPallete.gradient2,
                          fontWeight: FontWeight.bold))
                ])),
          ],
        ),
      ),
    );
  }
}
