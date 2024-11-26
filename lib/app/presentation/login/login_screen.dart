import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:timely_app/core/widget/app_widget.dart';
import 'package:timely_app/app/presentation/login/login_notifier.dart';
import 'package:timely_app/core/helper/global_helper.dart';
import 'package:timely_app/app/presentation/home/home_screen.dart';

class LoginScreen extends AppWidget<LoginNotifier, void, void> {
  @override
  Widget bodyBuild(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  'Timely App',
                  style: GlobalHelper.getTextStyle(context,
                          appTextStyle: AppTextStyle.HEADLINE_SMALL)
                      ?.copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email, color: Colors.grey),
                  label: Text(
                    "Email",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 160, 160, 160)),
                  ),
                  fillColor: Colors.grey[50],
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password, color: Colors.grey),
                  label: Text("Password",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 160, 160, 160))),
                  fillColor: Colors.grey[50],
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                width: double.maxFinite,
                child: FilledButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Color.fromRGBO(49, 157, 247, 1)),
                    ),
                    onPressed: () => _onPressLogin(context),
                    child: Text("Login")))
          ],
        ),
      ),
    );
  }

  _onPressLogin(BuildContext context) {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ));
  }
}
