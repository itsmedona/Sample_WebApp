import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'dart:js' as js;
import '../utils/project_utils.dart';

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({
    super.key,
    required this.project,
  });
  final ProjectUtils project;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          height: 290,
          width: 260,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorConstant.bgLight2,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // project img
              Image.asset(
                project.image,
                height: 140,
                width: 260,
                fit: BoxFit.cover,
              ),
              // title
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
                child: Text(
                  project.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: ColorConstant.whitePrimary,
                  ),
                ),
              ),
              // subtitle
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
                child: Text(
                  project.subtitle,
                  style: const TextStyle(
                    fontSize: 12,
                    color: ColorConstant.whiteSecondary,
                  ),
                ),
              ),
              const Spacer(),
              // footer
              Container(
                color: ColorConstant.bgLight1,
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    const Text(
                      "Available on:",
                      style: TextStyle(
                        color: ColorConstant.yellowSecondary,
                        fontSize: 10,
                      ),
                    ),
                    const Spacer(),
                    if (project.gitRepoLink != null)
                      InkWell(
                        onTap: () {
                          js.context.callMethod("open", [project.gitRepoLink]);
                        },
                        child: Image.asset(
                          "assets/images/github.png",
                          width: 19,
                        ),
                      ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
