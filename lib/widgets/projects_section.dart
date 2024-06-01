import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/widgets/project_card.dart';
import '../utils/project_utils.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Projects Done",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: ColorConstant.whitePrimary,
            ),
          ),
          const SizedBox(height: 50),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < hobbyProjectUtils.length; i++)
                  ProjectCardWidget(
                    project: hobbyProjectUtils[i],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
