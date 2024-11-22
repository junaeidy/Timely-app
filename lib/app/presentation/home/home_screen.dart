import 'package:flutter/material.dart';
import 'package:timely_app/app/presentation/home/home_notifier.dart';
import 'package:timely_app/core/helper/global_helper.dart';
import 'package:timely_app/core/widget/app_widget.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends AppWidget<HomeNotifier, void, void> {
  @override
  Widget bodyBuild(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                child: Icon(
                  Icons.person,
                  size: 30,
                ),
                backgroundColor: GlobalHelper.getColorSchema(context).primary,
                radius: 30,
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nama Pegawai',
                      style: GlobalHelper.getTextStyle(context,
                          appTextStyle: AppTextStyle.HEADLINE_SMALL),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Icon(Icons.location_city),
                              SizedBox(width: 5),
                              Text('Kantor'),
                            ],
                          ),
                        ),
                        Expanded(
                            child: Row(
                          children: [
                            Icon(Icons.access_time),
                            SizedBox(width: 5),
                            Text('Siang'),
                          ],
                        ))
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.logout))
            ],
          )
        ],
      ),
    );
  }
}
