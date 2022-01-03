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
    //MaterialApp 구글 스타일, 커스텀, Cupertino... 애플 스타일
    return MaterialApp(
       //글자 : Text('안녕'),아이콘 : icon(Icons.shop...),이미지 : Image.asset('경로'),
      //박스 : Container(width: 50, height: 50, color: Colors.blue,) 숫자는 Lp단위 1.2cm정도
      //assets 파일을 만들어주고 pubspec.yaml 파일에서 flutter 에서 사용한다고 정리 해줘야함
      /*
      flutter :
        assets:
         - assets/
      */
      //레이아웃 
      //Center(child:) 중앙 고정 
      //Scaffold 화면을 상중하로 나눠주는 위젯 
      // home: Scaffold(
      //   appBar: AppBar(),//상단 위젯
      //   body: Container(), //중단 위젯 
      //   bottomNavigationBar: BottomAppBar(child: Text('하단 입니다.'),),
      //   )
      //여러 위젯을 가로로 배치하는 법 Row(childeren:[]) 세로로 배치 하는 법 Column(childeren:[])
      // body: Row(children: [Icon(Icons.star),
      // Icon(Icons.shop)],
      //  )
      //mainAxisAligment: MainAxisAlignment.start,center,end 시작 가운데 마지막 정렬
      //crossAxisAligment: CrossAxisAlignment.center 반대축 정렬(상하 폭을 주면 세로정렬 가능)
      //생각이 안날때는 자동 완성 불러오기 cmd + I
      home:
      Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text('앱임'),
          ),
        body: Text('안녕'),
        bottomNavigationBar: BottomAppBar(
          child: 
          Container(
            height: 50.0,
             child: 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Icon(Icons.shop),Icon(Icons.star),Icon(Icons.shop)],
            )
            
          ),
          

        ),
      ),
    );
  }
}
