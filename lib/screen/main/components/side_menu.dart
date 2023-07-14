import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';
import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   Future<void> _launchSocialMediaAppIfInstalled({
  String? url,
}) async {
  try {
    bool launched = await launch(url!, forceSafariVC: false); // Launch the app if installed!

    if (!launched) {
      launch(url); // Launch web view if app is not installed!
    }
  } catch (e) {
    launch(url!); // Launch web view if app is not installed!
  }
}
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Residence",
                      text: "Anambra",
                    ),
                    AreaInfoText(
                      title: "City",
                      text: "Awka",
                    ),
                    AreaInfoText(
                      title: "Age",
                      text: "25",
                    ),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () {
                         html.window.open("https://github.com/LightEzekiel/LightEzekiel.github.io/blob/main/assets/assets/LightezekielCV.pdf", "text");},
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                              ),
                            ),
                            SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: ()=> _launchSocialMediaAppIfInstalled(
                              url: 'https://www.linkedin.com/in/light-ezekiel-b9898923b', // Linkedin
                                    ),
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: ()=> _launchSocialMediaAppIfInstalled(
                              url: 'https://github.com/LightEzekiel/', // Linkedin
                                    ),
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            onPressed: ()=> _launchSocialMediaAppIfInstalled(
                                     url: 'https://twitter.com/_lightezekiel?t=9RaQF95TFDl28G6Xms7YgQ&s-09', // Twitter
                              ),
                            icon: SvgPicture.asset("assets/icons/twitter.svg"),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
