import 'package:flutter/material.dart';
import '../constants/colors.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    return Scaffold(
      backgroundColor: ColorConstant.scaffoldBg,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          constraints: BoxConstraints(minHeight: screenHeight),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hi, \nI'm Dona Shaji\nA Flutter Developer",
                style: TextStyle(
                  fontSize: 30.0,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: ColorConstant.whitePrimary,
                ),
              ),
              SizedBox(height: 50),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor. Duis tristique sollicitudin nibh sit amet commodo nulla facilisi. Justo laoreet sit amet cursus sit. Consequat interdum varius sit amet mattis vulputate enim. Massa sed elementum tempus egestas. Justo eget magna fermentum iaculis. In metus vulputate eu scelerisque felis. Velit laoreet id donec ultrices tincidunt arcu non sodales. Amet commodo nulla facilisi nullam vehicula ipsum. Ac auctor augue mauris augue neque. Sit amet consectetur adipiscing elit. Integer malesuada nunc vel risus commodo viverra. Eu consequat ac felis donec et. Blandit turpis cursus in hac habitasse platea. Netus et malesuada fames ac turpis egestas integer eget. Pharetra massa massa ultricies mi quis. Varius duis at consectetur lorem donec massa sapien faucibus et.",
                style: TextStyle(
                  fontSize: 20.0,
                  height: 1.5,
                  fontWeight: FontWeight.normal,
                  color: ColorConstant.whitePrimary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
