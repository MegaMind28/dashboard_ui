import 'package:dashboard_ui/Screens/balance_widget.dart';
import 'package:dashboard_ui/Screens/feature_widget.dart';
import 'package:dashboard_ui/Screens/pending_actions_widget.dart';
import 'package:dashboard_ui/Screens/quicklinks_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(children: [
            Icon(
              FeatherIcons.menu,
              size: 25.0.r,
              color: Colors.white,
            )
          ]),
          actions: [
            Icon(
              FeatherIcons.map,
              size: 25.0.r,
              color: Colors.white,
            ),
            SizedBox(width: 20.w),
            Icon(
              FeatherIcons.bell,
              size: 25.0.r,
              color: Colors.white,
            ),
            SizedBox(width: 20.w),
            Icon(
              FeatherIcons.helpCircle,
              size: 25.0.r,
              color: Colors.white,
            ),
            SizedBox(
              width: 10.w,
            )
          ],
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                    padding: EdgeInsets.fromLTRB(10.w, 10.h, 10.w, 10.h),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius:
                              BorderRadius.all(Radius.circular(5.0.r)),
                          child: Container(
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                border: Border.all(color: Colors.grey),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0.r)),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsets.fromLTRB(15.w, 15.h, 15.w, 15.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          FeatherIcons.clock,
                                          size: 25.0.r,
                                          color: Colors.white,
                                        ),
                                        SizedBox(width: 10.w),
                                        Text(
                                          'Shift Details',
                                          style: TextStyle(
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    ),
                                    Icon(
                                      FeatherIcons.arrowRight,
                                      size: 25.0.r,
                                      color: Colors.blue,
                                    ),
                                  ],
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        const BalanceWidget(),
                        SizedBox(
                          height: 20.h,
                        ),
                        const FeatureWidget(),
                        SizedBox(
                          height: 30.h,
                        ),
                        const PendingActionsWidget(),
                        SizedBox(
                          height: 30.h,
                        ),
                        const QuickLinks(),
                        SizedBox(height: 20.h),
                      ],
                    )))));
  }
}
