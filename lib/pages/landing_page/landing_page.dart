import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../providers/home_app_bar_provider.dart';
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
  static const String route = '/landingpage';

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    const List<Widget> pages = <Widget>[
      HomePage(),
      ServicesPage(),
      ProjectPage(),
      TestimonyPage(),
      AboutPage(),
      Footer(),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        centerTitle: true,
        title: ResponsiveLayout(
          mobile: const LandingAppBarMobileview(),
          desktop: LadingAppBarWebview(size: size),
        ),
      ),
      body: Consumer<HomeAppBarProvider>(
        builder: (BuildContext context, HomeAppBarProvider homePro, _) {
          return ScrollablePositionedList.builder(
            itemCount: pages.length,
            itemBuilder: (BuildContext context, int index) => index ==
                    (pages.length - 1)
                ? const Footer()
                : SizedBox(
                    height: index == 1 || index == 2 ? null : size.height - 50,
                    child: pages[index],
                  ),
            itemScrollController: homePro.itemScrollController,
            itemPositionsListener: homePro.itemPositionsListener,
          );
        },
      ),
    );
  }
}
