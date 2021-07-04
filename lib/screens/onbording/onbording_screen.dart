import 'package:flutter/material.dart';
import 'package:go_jobs/constants.dart';

class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Image.asset(
              "assets/images/onbording_image_light_theme.png",
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
                        style: TextButton.styleFrom(
                          backgroundColor: primaryColor,
                          padding: EdgeInsets.all(defaultPadding),
                          shape: RoundedRectangleBorder(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(defaultBorderRadius),
                            ),
                          ),
                        ),
                        onPressed: () {},
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
