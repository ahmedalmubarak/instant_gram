import 'package:flutter/material.dart';
import 'package:instagram_clone/views/components/constants/strings.dart';
import 'package:instagram_clone/views/components/rich_text/base_text.dart';
import 'package:instagram_clone/views/components/rich_text/rich_text_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginViewSignupLinks extends StatelessWidget {
  const LoginViewSignupLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return RichTextWidget(
      styleForAll: Theme.of(context).textTheme.subtitle1!.copyWith(
            height: 1.5,
          ),
      texts: [
        BaseText.plan(text: Strings.dontHaveAnAccount),
        BaseText.plan(text: Strings.signUpOn),
        BaseText.link(
          text: Strings.google,
          onTapped: () => launchUrl(
            Uri.parse(Strings.googleSignupUrl),
          ),
        ),
      ],
    );
  }
}
