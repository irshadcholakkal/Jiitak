import 'package:flutter/material.dart';

List<Widget> dates = [
  datess('2021 / 11 / 18'),
  datess('2021 / 11 / 17'),
  datess('2021 / 11 / 16'),
  datess('2021 / 11 / 13'),
  datess('2021 / 11 / 12'),
  datess('2021 / 11 / 11'),
  datess('2021 / 11 / 10'),
  datess('2021 / 11 / 9'),
];
List<Widget> datesTablet = [
  datess2('2021 / 11 / 18'),
  datess2('2021 / 11 / 17'),
  datess2('2021 / 11 / 16'),
  datess2('2021 / 11 / 13'),
  datess2('2021 / 11 / 12'),
  datess2('2021 / 11 / 11'),
  datess2('2021 / 11 / 10'),
  datess2('2021 / 11 / 9'),
];
List<Widget> firstContent = [
  firstContents('スタンプを獲得しました。'),
  firstContents('スタンプを獲得しました。'),
  firstContents('スタンプを獲得しました。'),
  firstContents('スタンプを獲得しました。'),
  firstContents('スタンプを獲得しました。'),
  firstContents('スタンプを獲得しました。'),
  firstContents('スタンプを獲得しました。'),
  firstContents('スタンプを獲得しました。'),
];
List<Widget> firstContentTablet = [
  firstContents2('スタンプを獲得しました。'),
  firstContents2('スタンプを獲得しました。'),
  firstContents2('スタンプを獲得しました。'),
  firstContents2('スタンプを獲得しました。'),
  firstContents2('スタンプを獲得しました。'),
  firstContents2('スタンプを獲得しました。'),
  firstContents2('スタンプを獲得しました。'),
  firstContents2('スタンプを獲得しました。'),
];
List<Widget> trailingContent = [
  trailingContents('1 個'),
  trailingContents('1 個'),
  trailingContents('1 個'),
  trailingContents('1 個'),
  trailingContents('1 個'),
  trailingContents('1 個'),
  trailingContents('1 個'),
  trailingContents('1 個'),
];
List<Widget> trailingContentTablet = [
  trailingContents2('1 個'),
  trailingContents2('1 個'),
  trailingContents2('1 個'),
  trailingContents2('1 個'),
  trailingContents2('1 個'),
  trailingContents2('1 個'),
  trailingContents2('1 個'),
  trailingContents2('1 個'),
];


Widget datess(data) {
  return SizedBox(
      width: 106,
      child: Text(
        data,
        style: const TextStyle(
          color: Color(0xFFB4B4B4),
          fontSize: 12,
          fontFamily: 'Noto Sans JP',
          fontWeight: FontWeight.w500,
          letterSpacing: 1.26,
        ),
      ));
}
Widget datess2(data) {
  return SizedBox(
      
      child: Text(
        data,
        style: const TextStyle(
          color: Color(0xFFB4B4B4),
          fontSize: 25,
          fontFamily: 'Noto Sans JP',
          fontWeight: FontWeight.w500,
          letterSpacing: 1.26,
        ),
      ));
}

Widget firstContents(data) {
  return SizedBox(
    width: 233,
    child: Text(
      data,
      style: const TextStyle(
        color: Color(0xFF454545),
        fontSize: 14,
        fontFamily: 'Noto Sans JP',
        fontWeight: FontWeight.w400,
        letterSpacing: -0.24,
      ),
    ),
  );
}
Widget firstContents2(data) {
  return SizedBox(
    //width: 233,
    child: Text(
      data,
      style: const TextStyle(
        color: Color(0xFF454545),
        fontSize: 25,
        fontFamily: 'Noto Sans JP',
        fontWeight: FontWeight.w400,
        letterSpacing: -0.24,
      ),
    ),
  );
}

Widget trailingContents(data) {
  return SizedBox(
    width: 42,
    child: Text(
      data,
      textAlign: TextAlign.right,
      style: const TextStyle(
        color: Color(0xFF454545),
        fontSize: 14,
        fontFamily: 'Noto Sans JP',
        fontWeight: FontWeight.w700,
        height: 0.10,
        letterSpacing: -0.24,
      ),
    ),
  );
}
Widget trailingContents2(data) {
  return SizedBox(
    //width: 42,
    child: Text(
      data,
      textAlign: TextAlign.right,
      style: const TextStyle(
        color: Color(0xFF454545),
        fontSize:25 ,
        fontFamily: 'Noto Sans JP',
        fontWeight: FontWeight.w700,
        height: 0.10,
        letterSpacing: -0.24,
      ),
    ),
  );
}


