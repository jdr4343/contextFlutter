import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
//앱의 메인 페이지 stless + Tap
//Flutter에서 앱 디자인 하는 방법은 위젯 짜집기라고 보면됨
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: 
      Icon(Icons.shop),
      
    );
  }
}
