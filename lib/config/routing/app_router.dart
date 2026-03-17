import 'package:flutter/material.dart';
import 'package:productCleanArchitecture/config/routing/routes.dart';

import 'package:productCleanArchitecture/feature/product/presentation/screens/homescreen.dart';

Route? generateRoute(RouteSettings setting) {
  switch (setting.name) {
    case Routes.homeScreen:
      return MaterialPageRoute(
        builder: (context) => Homescreen(),
        settings: setting,
      );
    default:
      return MaterialPageRoute(
        builder:
            (context) => Scaffold(
              appBar: AppBar(title: Text("Page Not Found")),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Page Not Found"),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        Routes.homeScreen, // الصفحة اللي هترجع لها
                        (route) =>
                            route.settings.name ==
                            Routes
                                .homeScreen, // الشرط: احتفظ بكل الصفحات اللي اسمها splash
                      );
                    },
                    child: Text("Go To Home"),
                  ),
                ],
              ),
            ),
      );
  }
}
