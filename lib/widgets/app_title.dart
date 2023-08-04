import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_dex/consts/const.dart';
import 'package:poke_dex/consts/ui_helper.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UIhelper.getAppTitleWidgetHeight(),
      child: Stack(
        children: [
          Padding(
            padding: UIhelper.getDefaultPadding(),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  Constants.title,
                  style: Constants.gettitleStyle(),
                )),
          ),
          Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                "images/pokeball.png",
                width: ScreenUtil().orientation == Orientation.portrait
                    ? 0.2.sh
                    : 0.2.sw,
                fit: BoxFit.fitWidth,
              ))
        ],
      ),
    );
  }
}
