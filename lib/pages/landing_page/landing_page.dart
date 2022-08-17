import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/home_app_bar_provider.dart';
import '../../utilities/app_images.dart';
import '../about_page/about_page.dart';
import '../home_page/home_page.dart';
import '../services_page/services_page.dart';

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
                    _ItemButton(
                      title: items[0],
                      isSelected: itemPro.currentIndex == 0,
                      onTap: () => itemPro.onIndexChange(0),
                    ),
                    _ItemButton(
                      title: items[1],
                      isSelected: itemPro.currentIndex == 1,
                      onTap: () => itemPro.onIndexChange(1),
                    ),
                    _ItemButton(
                      title: items[2],
                      isSelected: itemPro.currentIndex == 2,
                      onTap: () => itemPro.onIndexChange(2),
                    ),
                    _ItemButton(
                      title: items[3],
                      isSelected: itemPro.currentIndex == 3,
                      onTap: () => itemPro.onIndexChange(3),
                    ),
                    _ItemButton(
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
          ],
        ),
      ),
    );
  }
}

class _ItemButton extends StatelessWidget {
  const _ItemButton({
    required this.title,
    required this.isSelected,
    required this.onTap,
    Key? key,
  }) : super(key: key);
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            const SizedBox(height: 2),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: isSelected ? FontWeight.w800 : FontWeight.w200,
              ),
            ),
            Container(
              height: 2,
              width: 20,
              color: isSelected ? Colors.white : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
