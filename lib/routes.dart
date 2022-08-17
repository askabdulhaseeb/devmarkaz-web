import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'pages/landing_page/landing_page.dart';

final GoRouter router = GoRouter(
  urlPathStrategy: UrlPathStrategy.path,
  initialLocation: LandingPage.route,
  routes: <GoRoute>[
    GoRoute(
      path: LandingPage.route,
      builder: (BuildContext context, GoRouterState state) =>
          const LandingPage(),
    ),
  ],
);
