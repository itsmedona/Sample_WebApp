import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/widgets/drawer_mobile.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';
import 'package:my_portfolio/widgets/main_desktop.dart';
import '../constants/size.dart';
import '../widgets/contact_section.dart';
import '../widgets/header_desktop.dart';
import '../widgets/skills_desktop.dart';
import '../widgets/skills_mobile.dart';

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
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return LayoutBuilder(builder: (context, constraints) {
      // for making responsive
      return Scaffold(
          key: scaffoldKey,
          backgroundColor: ColorConstant.scaffoldBg,
          endDrawer: constraints.maxWidth >= kMinDesktopWidth
              ? null
              : DrawerMobile(), //ternary oprtr is used end drawer will see only when the size is reduced to mobile size
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //MAIN
              if (constraints.maxWidth >=
                  kMinDesktopWidth) //checking for responsive
                HeaderDesktop()
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
              MainDesktop(),

              //SKILLS
              Container(
                key: navbarKeys[1],
                width: screenWidth,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                color: ColorConstant.bgLight1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // title
                    const Text(
                      "What I can do",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: ColorConstant.whitePrimary,
                      ),
                    ),
                    const SizedBox(height: 50),

                    // platforms and skills
                    if (constraints.maxWidth >= kMedDesktopWidth)
                      const SkillsDesktop()
                    else
                      const SkillsMobile(),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              /*PROJECTS
              Container(
                height: 500,
                width: double.maxFinite,
              ),*/

              // CONTACT
              ContactSection(
                key: navbarKeys[3],
              ),
              const SizedBox(height: 30),

              // FOOTER
              //const Footer(),
            ],
          ),
        );
   } );
    }
  }

