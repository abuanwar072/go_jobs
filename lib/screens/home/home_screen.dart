import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:go_jobs/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Get.textTheme.bodyText1!.color,
        onPressed: () => Get.changeThemeMode(
          Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
        ),
        child: Icon(Get.isDarkMode ? Icons.light_mode : Icons.dark_mode),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Jobs", style: Theme.of(context).textTheme.headline5!),
              SizedBox(height: defaultPadding),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) => JobCard(
                    image: "assets/images/image_${index + 1}.png",
                  ),
                  separatorBuilder: (context, index) =>
                      SizedBox(height: defaultPadding),
                  itemCount: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class JobCard extends StatelessWidget {
  const JobCard({
    Key? key,
    this.image,
  }) : super(key: key);

  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius:
            const BorderRadius.all(Radius.circular(defaultBorderRadius)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      borderRadius: const BorderRadius.all(
                          Radius.circular(defaultBorderRadius)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(defaultPadding),
                      child: Image.asset(image!),
                    ),
                  ),
                ),
              ),
              SizedBox(width: defaultPadding),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "We are looking for a UX designer to retouch our product.",
                    ),
                    MaterialButton(
                      onPressed: () {},
                      elevation: 0,
                      minWidth: 30,
                      height: 30,
                      color: blueColor.withOpacity(0.08),
                      child: Text(
                        "Open",
                        style: TextStyle(color: blueColor, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: defaultPadding / 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              JobCardInfo(
                svgSrc: "assets/icons/Buildings.svg",
                text: "Fulltime, Office",
              ),
              JobCardInfo(
                svgSrc: "assets/icons/calendar.svg",
                text: "21-04-2021",
              ),
              JobCardInfo(
                svgSrc: "assets/icons/MapPin.svg",
                text: "Japan",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class JobCardInfo extends StatelessWidget {
  const JobCardInfo({
    Key? key,
    required this.svgSrc,
    required this.text,
  }) : super(key: key);

  final String? svgSrc, text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(svgSrc!),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
          child: Text(text!),
        )
      ],
    );
  }
}
