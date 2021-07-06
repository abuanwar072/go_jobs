import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_jobs/constants.dart';
import 'package:go_jobs/screens/home/home_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            children: [
              Spacer(),
              SvgPicture.asset(
                Theme.of(context).brightness == Brightness.light
                    ? "assets/icons/gojobs_light_them.svg"
                    : "assets/icons/gojobs_dark_theme.svg",
              ),
              Spacer(),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Sign In",
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: defaultPadding),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {},
                      onSaved: (email) {},
                      decoration: InputDecoration(labelText: "Email"),
                    ),
                    const SizedBox(height: defaultPadding),
                    TextFormField(
                      obscureText: true,
                      validator: (value) {},
                      onSaved: (email) {},
                      decoration: InputDecoration(labelText: "Password"),
                    ),
                  ],
                ),
              ),
              Spacer(flex: 2),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  ),
                  child: Text("Sign In".toUpperCase()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
