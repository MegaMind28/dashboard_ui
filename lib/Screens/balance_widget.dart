import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BalanceWidget extends StatefulWidget {
  const BalanceWidget({Key key}) : super(key: key);

  @override
  _BalanceWidgetState createState() => _BalanceWidgetState();
}

class _BalanceWidgetState extends State<BalanceWidget> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(5.0.r)),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.grey.shade800,
              const Color(0xFF000000),
            ])),
        width: MediaQuery.of(context).size.width,
        child: Padding(
            padding: EdgeInsets.all(15.0.r),
            child: Column(
              children: [
                SizedBox(
                  height: 15.h,
                ),
                CircularPercentIndicator(
                  radius: 190.0.r,
                  animation: true,
                  animationDuration: 2000,
                  lineWidth: 15.0,
                  percent: 0.9,
                  reverse: true,
                  arcBackgroundColor: const Color(0xFF14bae3),
                  arcType: ArcType.FULL,
                  center: Column(
                    children: [
                      SizedBox(
                        height: 37.h,
                      ),
                      Text(
                        '₹ 271',
                        style: TextStyle(
                            fontSize: 30.sp, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        'so far this week',
                        style: TextStyle(fontSize: 15.sp),
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      Text(
                        '₹ 924',
                        style: TextStyle(
                            fontSize: 21.sp, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 5.sp,
                      ),
                      Text(
                        'Last week',
                        style: TextStyle(fontSize: 15.sp),
                      ),
                    ],
                  ),
                  circularStrokeCap: CircularStrokeCap.butt,
                  backgroundColor: Colors.yellow,
                  progressColor: const Color(0xFF21242c),
                ),
                SizedBox(
                  height: 15.sp,
                ),
                Text(
                  'Complete more tasks & earn more!',
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 25.sp,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(30.0.r)),
                  child: Container(
                      height: 50.h,
                      width: 300.w,
                      decoration: BoxDecoration(
                        color: const Color(0xFF28c17a),
                        borderRadius: BorderRadius.all(Radius.circular(30.0.r)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 10.h),
                        child: Center(
                          child: Text(
                            'START DUTY',
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                ),
                SizedBox(
                  height: 15.h,
                ),
              ],
            )),
      ),
    );
  }
}
