import 'package:flutter/material.dart';

import '../../utilities/app_colors.dart';
import '../../widgets/custom_widgets/responsive_layout.dart';
import '../about_page/about_page.dart';
import '../footer/footer.dart';
import '../home_page/home_page.dart';
import '../projects_page/projects_page.dart';
import '../services_page/services_page.dart';
import '../testimony_page/testimony_page.dart';
import 'landing_appbar_mobileview.dart';
import 'landing_appbar_webview.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);
  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.lightPrimary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        centerTitle: true,
        title: ResponsiveLayout(
          mobile: const LandingAppBarMobileview(),
          desktop: LadingAppBarWebview(size: size),
        ),
      ),
      body: SizedBox(
        height: size.height,
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: size.height - 50,
              child: const HomePage(),
            ),
            SizedBox(
              height: size.height - 50,
              child: const ServicesPage(),
            ),
            SizedBox(
              height: size.height - 50,
              child: const AboutPage(),
            ),
            SizedBox(
              height: size.height - 50,
              child: const ProjectPage(),
            ),
            SizedBox(
              height: size.height - 50,
              child: const TestimonyPage(),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
