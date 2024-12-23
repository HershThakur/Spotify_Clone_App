import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/common/widgets/appbar/app_bar.dart';
import 'package:spotify_clone/common/widgets/button/basic_app_button.dart';
import 'package:spotify_clone/core/config/assets/app_vectors.dart';
import 'package:spotify_clone/data/models/auth/sign_in_user.dart';
import 'package:spotify_clone/domain/usecases/auth/sign_in.dart';
import 'package:spotify_clone/view/authentication/pages/signup_page.dart';
import 'package:spotify_clone/view/root/pages/root_page.dart';

import '../../service_locator.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});

  final TextEditingController _usernameOrEmail = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _signupText(context),
      appBar: BasicAppBar(
        title: SvgPicture.asset(
          AppVectors.logo,
          height: 40,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 50,
          horizontal: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _registerText(),
            const SizedBox(height: 50),
            _usernameOrEmailTextField(context),
            const SizedBox(height: 50),
            _passwordTextField(context),
            const SizedBox(height: 50),
            BasicAppButton(
                onPressed: () async {
                  var result = await sl<SignInUseCase>().call(
                    params: SignInUser(
                      email: _usernameOrEmail.text,
                      password: _password.text,
                    ),
                  );

                  result.fold(
                    (l) {
                      var snackbar = SnackBar(
                        content: Text(l),
                        behavior: SnackBarBehavior.floating,
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    },
                    (r) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const RootPage(),
                        ),
                        (root) => false,
                      );
                    },
                  );
                },
                title: "Sign In"),
          ],
        ),
      ),
    );
  }

  Widget _registerText() {
    return const Text(
      "Sign In",
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _usernameOrEmailTextField(BuildContext context) {
    return TextField(
      controller: _usernameOrEmail,
      decoration: const InputDecoration(
        hintText: "Enter Username Or Email",
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme,
      ),
    );
  }

  Widget _passwordTextField(BuildContext context) {
    return TextField(
      controller: _password,
      decoration: const InputDecoration(
        hintText: "Password",
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme,
      ),
    );
  }

  Widget _signupText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "Not a member? ",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => SignUpPage(),
                ),
              );
            },
            child: const Text("Register Now"),
          )
        ],
      ),
    );
  }
}
