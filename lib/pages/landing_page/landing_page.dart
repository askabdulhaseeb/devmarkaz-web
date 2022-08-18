import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/home_app_bar_provider.dart';
import '../../utilities/app_images.dart';
import '../../widgets/custom_widgets/underline_text_button.dart';
import '../about_page/about_page.dart';
import '../footer/footer.dart';
import '../home_page/home_page.dart';
import '../projects_page/projects_page.dart';
import '../services_page/services_page.dart';
import '../testimony_page/testimony_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);
  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            //
            // Leading Icon
            //
            Row(
              children: <Widget>[
                SizedBox(
                  height: 40,
                  child: Image.asset(AppImages.logoWhite),
                ),
                const SizedBox(width: 8),
                const SelectableText(
                  'DevMarkaz',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            //
            // App Bar Items
            //
            Consumer<HomeAppBarProvider>(
                builder: (BuildContext context, HomeAppBarProvider itemPro, _) {
              final List<String> items = itemPro.items;
              return SizedBox(
                height: 40,
                width: size.width / 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    UnderlineTextButton(
                      title: items[0],
                      isSelected: itemPro.currentIndex == 0,
                      onTap: () => itemPro.onIndexChange(0),
                    ),
                    UnderlineTextButton(
                      title: items[1],
                      isSelected: itemPro.currentIndex == 1,
                      onTap: () => itemPro.onIndexChange(1),
                    ),
                    UnderlineTextButton(
                      title: items[2],
                      isSelected: itemPro.currentIndex == 2,
                      onTap: () => itemPro.onIndexChange(2),
                    ),
                    UnderlineTextButton(
                      title: items[3],
                      isSelected: itemPro.currentIndex == 3,
                      onTap: () => itemPro.onIndexChange(3),
                    ),
                    UnderlineTextButton(
                      title: items[4],
                      isSelected: itemPro.currentIndex == 4,
                      onTap: () => itemPro.onIndexChange(4),
                    ),
                  ],
                ),
              );
            }),
            ElevatedButton(
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: SelectableText(
                  'Contact us',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                ),
              ),
            ),
          ],
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
