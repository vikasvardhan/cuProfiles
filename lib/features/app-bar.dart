import 'package:cuprofiles/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      elevation: 0.0,
      centerTitle: true,
      leading: Container(
        margin: EdgeInsets.only(left: 10),
        //decoration: BoxDecoration(color: Colors.white),
        child: Image.asset('assets/images/mobile_Peer_logo.png'),
      ),
      leadingWidth: 120,
      title: Text(
        'CU Profiles',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}
