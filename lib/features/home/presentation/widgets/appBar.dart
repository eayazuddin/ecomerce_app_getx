import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'CircularIconButton.dart';

class HomeScreenAppbarTitle extends StatefulWidget {
  const HomeScreenAppbarTitle({super.key});

  @override
  State<HomeScreenAppbarTitle> createState() => _HomeScreenAppbarTitleState();
}

class _HomeScreenAppbarTitleState extends State<HomeScreenAppbarTitle> {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset("assets/images/logo_nav.svg",fit: BoxFit.cover,),
        const Spacer(),
        CircularIconButton(
          icon: Icons.person,
          onTap: () async {
          },
        ),
        const SizedBox(
          width: 8,
        ),
        CircularIconButton(
          icon: Icons.call,
          onTap: () {
            // launchUrlString("tel://${008801861883575}");
          },
        ),
        const SizedBox(
          width: 8,
        ),
        CircularIconButton(
          icon: Icons.notifications_none,
          onTap: () {},
        ),
        const SizedBox(
          width: 8,
        ),
       /* CircularIconButton(
          icon: currentThemeMode == ThemeMode.light
              ? Icons.sunny
              : Icons.nightlight,
          onTap: _toggleTheme,
        ),*/
        const SizedBox(
          width: 12,
        ),
        CircularIconButton(
          icon: Icons.logout,
          onTap: () async {
            Get.snackbar('Success', 'Logout successful.',
                backgroundColor: Colors.green,
                colorText: Colors.white,
                borderRadius: 10,
                snackPosition: SnackPosition.BOTTOM);
          },
        ),
      ],
    );
  }
}
