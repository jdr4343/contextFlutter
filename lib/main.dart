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
      // home:
      // Scaffold(
      //   appBar: AppBar(
      //     centerTitle: false,
      //     title: Text('앱임'),
      //     ),
      //   body: Text('안녕'),
      //   bottomNavigationBar: BottomAppBar(
      //     child: 
      //     SizedBox(
      //       height: 50.0,
      //        child: 
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [Icon(Icons.phone), Icon(Icons.message), Icon(Icons.contact_page)],
      //       )
            
      //     ),
          

      //   ),
      // ),

      //박스 디자인, 여백주기 : margin, 안쪽 여백주기 : padding, 테두리등등 : decoration
      //BoxDecoration 키게 되면 중복되는 컬러 지정을 하지 못함
      /*
       margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
            color: Colors.blue,
            borderRadius: BorderRadius.circular(25),
      */
      //메서드를 더블 클릭하고 전구를 통해 감싸줄수 있음, 랩핑이 가능하다는 소리. Center또한 사용할수 있으나 좀더 자세하게
      //만들기 위해서는 Align로 랩핑하고 Alignment를 이용해 left CenterRight등 다양한 메서드를 사용할수 있음
      //길이나 폭이 무한하다는 뜻으로 꽉채우고 싶다면 double.infinity를 사용해주면 됨
      home: Scaffold(
        appBar: AppBar( title: Text('앱임'), centerTitle: false,),
        body: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: double.infinity, height: 50, color: Colors.blue,
            
             
              ),
        ),
          

        ),
        
    );
  }
}
