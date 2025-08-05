import 'package:cuprofiles/constants/colors.dart';
import 'package:cuprofiles/pages/profile.dart';
import 'package:cuprofiles/features/app-bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          SizedBox(height: 40),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Text(
                  'Credit Union Profile Search',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Text(
                  'Welcome to Peer Suite\'s mobile-friendly version of Credit Union Profile Report. Login below to start browsing.',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              _login(context),
              SizedBox(height: 50),
              Image.asset('assets/images/peer_in_software_200x50.png'),
            ],
          ),
        ],
      ),
    );
  }

  Column _login(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color(0xff1D1617).withValues(alpha: 0.11),
                blurRadius: 40,
                spreadRadius: 0.0,
              ),
            ],
          ),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.all(15),
              hintText: 'Username',
              hintStyle: TextStyle(color: Color(0xff000000), fontSize: 14),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset('assets/images/user-svgrepo-com.svg'),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        SizedBox(height: 15),
        Container(
          margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color(0xff1D1617).withValues(alpha: 0.11),
                blurRadius: 40,
                spreadRadius: 0.0,
              ),
            ],
          ),
          child: TextField(
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.all(15),
              hintText: 'Password',
              hintStyle: TextStyle(color: Color(0xff000000), fontSize: 14),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset(
                  'assets/images/password-svgrepo-com.svg',
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        SizedBox(height: 15),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
          },
          child: Container(
            width: 100,
            height: 30,
            decoration: BoxDecoration(
              color: Color(0xff0092b5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
