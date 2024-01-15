import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/consts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [c1, c2],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(size.height * 0.030),
            child: OverflowBar(
              overflowAlignment: OverflowBarAlignment.center,
              overflowSpacing: size.height * 0.014,
              children: [
                Image.asset(image1),
                const Text(
                  "Hello Flutter",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                    color: cBlackColor,
                  ),
                ),
                const Text(
                  "Log In",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 34,
                    color: cBlackColor,
                  ),
                ),
                SizedBox(height: size.height * 0.024),
                TextField(
                  keyboardType: TextInputType.text,
                  style: const TextStyle(color: cInputColor),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 25.0),
                    filled: true,
                    hintText: "Username",
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(userIcon),
                    ),
                    fillColor: cWhiteColor,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                TextField(
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  style: const TextStyle(color: cInputColor),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 25.0),
                    filled: true,
                    hintText: "Password",
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(keyIcon),
                    ),
                    fillColor: cWhiteColor,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                CupertinoButton(
                  padding: EdgeInsets.zero,
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: size.height * 0.080,
                    decoration: BoxDecoration(
                      color: cButtonColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      "Continue",
                      style: TextStyle(
                        color: cWhiteColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  onPressed: () {},
                ),
                SizedBox(height: size.height * 0.014),
                SvgPicture.asset("assets/icons/deisgn.svg"),
                SizedBox(height: size.height * 0.014),
                CupertinoButton(
                  padding: EdgeInsets.zero,
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: size.height * 0.080,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 45,
                          spreadRadius: 0,
                          color: Color.fromRGBO(120, 37, 139, 0.25),
                          offset: Offset(0, 25),
                        )
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromRGBO(120, 37, 139, 0.25),
                    ),
                    child: const Text(
                      "Create an Account..",
                      style: TextStyle(
                        color: cWhiteColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
