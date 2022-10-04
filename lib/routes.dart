import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'pages/about_page/about_page.dart';
import 'pages/first_page/first_page.dart';
import 'pages/footer/footer.dart';
import 'pages/home_page/home_page.dart';
import 'pages/landing_page/landing_page.dart';
import 'pages/projects_page/projects_page.dart';
import 'pages/services_page/services_page.dart';
import 'pages/testimony_page/testimony_page.dart';

final GoRouter router = GoRouter(
  urlPathStrategy: UrlPathStrategy.path,
  initialLocation: FirstPage.route,
  routes: <GoRoute>[
    GoRoute(
      path: LandingPage.route,
      builder: (BuildContext context, GoRouterState state) =>
          const LandingPage(),
    ),
    GoRoute(
      path: FirstPage.route,
      builder: (BuildContext context, GoRouterState state) => const FirstPage(),
    )
    //   routes: <GoRoute>[
    //     GoRoute(
    //       path: HomePage.route,
    //       builder: (BuildContext context, GoRouterState state) =>
    //           const HomePage(),
    //     ),
    //     GoRoute(
    //       path: ServicesPage.route,
    //       builder: (BuildContext context, GoRouterState state) =>
    //           const ServicesPage(),
    //     ),
    //     GoRoute(
    //       path: AboutPage.route,
    //       builder: (BuildContext context, GoRouterState state) =>
    //           const AboutPage(),
    //     ),
    //     GoRoute(
    //       path: ProjectPage.route,
    //       builder: (BuildContext context, GoRouterState state) =>
    //           const ProjectPage(),
    //     ),
    //     GoRoute(
    //       path: TestimonyPage.route,
    //       builder: (BuildContext context, GoRouterState state) =>
    //           const TestimonyPage(),
    //     ),
    //     GoRoute(
    //       path: Footer.route,
    //       builder: (BuildContext context, GoRouterState state) =>
    //           const Footer(),
    //     ),
    //   ],
    // ),
  ],
  errorBuilder: (BuildContext context, GoRouterState state) =>
      const Scaffold(body: Center(child: Text('Error'))),
);
