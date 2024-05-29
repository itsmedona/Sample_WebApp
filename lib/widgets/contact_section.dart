import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/custom_textfield.dart';
import '../constants/app_links.dart';
import '../constants/colors.dart';
import '../constants/size.dart';
import 'dart:js' as js;

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: ColorConstant.bgLight1,
      child: Column(
        children: [
          // title
          const Text(
            "Get in touch",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: ColorConstant.whitePrimary,
            ),
          ),

          const SizedBox(height: 50),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
              maxHeight: 100,
            ),
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth >= kMinDesktopWidth) {
                  return buildNameEmailFieldDesktop();
                }
                // else
                return buildNameEmailFieldMobile();
              },
            ),
          ),
          const SizedBox(height: 15),
          // message
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: CustomTextField(
              hintText: "Your message",
              maxLines: 16,
            ),
          ),
          const SizedBox(height: 20),
          // send button
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Get in touch"),
              ),
            ),
          ),
          const SizedBox(height: 30),

          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 300,
            ),
            child: const Divider(),
          ),
          const SizedBox(height: 15),

          // SNS icon button links
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [AppLinks.github]);
                },
                child: Image.asset(
                  "assets/images/github.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [AppLinks.linkedIn]);
                },
                child: Image.asset(
                  "assets/images/linkedin.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [AppLinks.instagram]);
                },
                child: Image.asset(
                  "assets/images/instagram.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [AppLinks.telegram]);
                },
                child: Image.asset(
                  "assets/images/telegram.png",
                  width: 28,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Row buildNameEmailFieldDesktop() {
    return Row(
      children: [
        // name
        Flexible(
          child: CustomTextField(
            hintText: "Your name",
          ),
        ),
        const SizedBox(width: 15),
        // email
        Flexible(
          child: CustomTextField(
            hintText: "Your email",
          ),
        ),
      ],
    );
  }

  Column buildNameEmailFieldMobile() {
    return Column(
      children: [
        // name
        Flexible(
          child: CustomTextField(
            hintText: "Your name",
          ),
        ),
        const SizedBox(height: 15),
        // email
        Flexible(
          child: CustomTextField(
            hintText: "Your email",
          ),
        ),
      ],
    );
  }
}
