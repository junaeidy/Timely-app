import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:timely_app/core/widget/app_widget.dart';
import 'package:timely_app/app/presentation/login/login_notifier.dart';
import 'package:timely_app/core/helper/global_helper.dart';

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
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  label: Text("Email"),
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  label: Text("Password"),
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                width: double.maxFinite,
                child: FilledButton(
                    onPressed: _onPressLogin, child: Text("Login")))
          ],
        ),
      ),
    );
  }

  _onPressLogin() {}
}
