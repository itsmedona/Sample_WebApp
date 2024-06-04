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
import '../view_models.dart/responsive.dart';
import '../widgets/projects_section.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(6, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: ColorConstant.scaffoldBg,
      endDrawer: Responsive.isDesktop(context)
          ? null
          : DrawerMobile(onNavItemTap: (int navIndex) {
              scaffoldKey.currentState?.closeEndDrawer();
              scrollToSection(navIndex);
            }),
      body: SingleChildScrollView(
        controller: scrollController,
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(key: navbarKeys.first),

            // HEADER
            Responsive(
              mobile: HeaderMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
              ),
              desktop: HeaderDesktop(onNavMenuTap: (int navIndex) {
                scrollToSection(navIndex);
              }),
            ),

            // MAIN
            Responsive(
              mobile: const MainMobile(),
              desktop: const MainDesktop(),
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
                  const Text(
                    "What I can do",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: ColorConstant.whitePrimary,
                    ),
                  ),
                  const SizedBox(height: 50),
                  Responsive(
                    mobile: const SkillsMobile(),
                    desktop: const SkillsDesktop(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // PROJECTS
            ProjectsSection(
              key: navbarKeys[2],
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
      ),
    );
  }

  void scrollToSection(int navIndex) {
    // Adjust for navigation to About and Contact pages
    if (navIndex == 4) {
      Navigator.pushNamed(context, '/about');
    } else if (navIndex == 5) {
      Navigator.pushNamed(context, '/about');
    } else {
      final key = navbarKeys[navIndex];
      Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }
}
