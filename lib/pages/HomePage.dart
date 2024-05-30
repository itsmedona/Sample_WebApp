import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/widgets/drawer_mobile.dart';
import 'package:my_portfolio/widgets/footer.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';
import 'package:my_portfolio/widgets/main_desktop.dart';
import 'package:my_portfolio/widgets/main_mobile.dart';
import 'package:my_portfolio/widgets/skills_desktop.dart';
import 'package:my_portfolio/widgets/skills_mobile.dart';
import 'package:my_portfolio/widgets/contact_section.dart';
import 'package:my_portfolio/widgets/header_desktop.dart';
import 'package:my_portfolio/view_models.dart/responsive.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: ColorConstant.scaffoldBg,
      endDrawer: Responsive.isMobile(context) ? DrawerMobile() : null, // Show drawer only for mobile
      body: ListView(
        controller: scrollController,
        scrollDirection: Axis.vertical,
        children: [
          // HEADER
          Responsive(
            mobile: HeaderMobile(
              onLogoTap: () { },
              onMenuTap: () {
                scaffoldKey.currentState?.openEndDrawer();
              },
            ),
            desktop: HeaderDesktop(),
          ),
          
          // MAIN CONTENT
          Responsive(
            mobile: MainMobile(), 
            desktop: MainDesktop(),
          ),

          // SKILLS
          Container(
            key: navbarKeys[1],
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
            color: ColorConstant.bgLight1,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Title
                const Text(
                  "What I can do",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: ColorConstant.whitePrimary,
                  ),
                ),
                const SizedBox(height: 50),

                // Platforms and Skills
                Responsive(
                  mobile: const SkillsMobile(),
                  desktop: const SkillsDesktop(), 
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),

          // CONTACT
          ContactSection(
            key: navbarKeys[3],
          ),
          const SizedBox(height: 30),

          // FOOTER
          Footer(),
        ],
      ),
    );
  }
}
