import 'package:flutter/material.dart';
import 'package:go_jobs/constants.dart';
import 'package:go_jobs/screens/auth/sign_in_screen.dart';

class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(Theme.of(context).brightness);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Image.asset(
              Theme.of(context).brightness == Brightness.light
                  ? "assets/images/onbording_image_light_theme.png"
                  : "assets/images/onbording_image_dark_theme.png.png",
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: SafeArea(
              top: false,
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    Spacer(),
                    Text(
                      "Looking For A Dream?",
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: defaultPadding / 2),
                    Text(
                      "Now you can easily find your dream \njob on GoJobs. Happy search!",
                      textAlign: TextAlign.center,
                    ),
                    Spacer(flex: 2),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignInScreen(),
                          ),
                        ),
                        child: Text("Get Started"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
