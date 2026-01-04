import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/di/getx_di_injection.dart';
import 'core/router/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initGetXDependencies();
  runApp(const CraftyBay());
}

class CraftyBay extends StatefulWidget {
  static GlobalKey<NavigatorState> globalKey = GlobalKey<NavigatorState>();

  const CraftyBay({super.key});

  @override
  State<CraftyBay> createState() => _CraftyBayState();
}

class _CraftyBayState extends State<CraftyBay> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: AppRouter.route.routeInformationParser,
      routerDelegate: AppRouter.route.routerDelegate,
      routeInformationProvider: AppRouter.route.routeInformationProvider,
    );
  }
}
