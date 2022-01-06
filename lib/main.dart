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

      // 박스 디자인, 여백주기 : margin, 안쪽 여백주기 : padding, 테두리등등 : decoration
      // BoxDecoration 키게 되면 중복되는 컬러 지정을 하지 못함
      /*
       margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
            color: Colors.blue,
            borderRadius: BorderRadius.circular(25),
      */
      // 메서드를 더블 클릭하고 전구를 통해 감싸줄수 있음, 랩핑이 가능하다는 소리. Center또한 사용할수 있으나 좀더 자세하게
      // 만들기 위해서는 Align로 랩핑하고 Alignment를 이용해 left CenterRight등 다양한 메서드를 사용할수 있음
      // 길이나 폭이 무한하다는 뜻으로 꽉채우고 싶다면 double.infinity를 사용해주면 됨
      // home: Scaffold(
      //   appBar: AppBar( title: Text('앱임'), centerTitle: false,),
      //   body: Align(
      //     alignment: Alignment.centerLeft,
      //     child: Container(
      //       width: double.infinity, height: 50, color: Colors.blue,
            
             
    //           ),
    //     ),
          

    //     ),
        
    // );

    // 글자 스타일
    // 헥스 컬러 0xff+ 헥스 컬러 기호
    // 폰트 사이즈 fontSize: 00, 폰트 굵기: fontWeight: FontWeight.w100...w900
    /*
    body: SizedBox(child: Text('안녕하세요',
       style: TextStyle(color: Color(0x6970B1B1),
       fontSize: 25,
       fontWeight: FontWeight.w300
    */

    // 아이콘 스타일
    // child: Icon(Icons.star, color: Colors.blue, size: 65,)

    // 버튼 TextButton(),IconButton(),ElevatedButton()
    // 버튼은 두개의 필수 파라미터가 존재함 child : 버튼의 내용, onpressed : 눌렸을떄 상호효과 (함수를 집어 넣으면 됨)
    /*
     body: SizedBox(
        child: ElevatedButton( 
          child: Text('버튼'),
          onPressed: (){},
          style: ButtonStyle()
          ),

          )
    */

    // 앱바 디자인
    // title: 제목, leading: 왼쪽에 넣을 아이콘 action : 상단 버튼
    // home: Scaffold(
    //   appBar: AppBar( 
    //     title: Text('앱임'),
    //     centerTitle: false,
    //     leading: Icon(Icons.star),
    //     actions: [
    //       IconButton(onPressed: (){}, icon: Icon(Icons.star)),
    //       IconButton(onPressed: (){}, icon: Icon(Icons.shop)),
    //       IconButton(onPressed: (){}, icon: Icon(Icons.star)),
    //       ],
    //     ),
    //   body: SizedBox()
       
    //    ),
    
    home: Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('금호동 3가', 
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w600
              ),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down, color: Colors.black,))    
          ],
        ),
        centerTitle: false,
        //leading: Icon(Icons.keyboard_arrow_down, color: Colors.black,),
        actions: [
          Container(child:
            IconButton(onPressed: (){}, icon: Icon(
            Icons.search, color: Colors.black, size: 26, )
            ),
            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
            ),
         Container(child:  IconButton(onPressed: (){}, icon: Icon(
            Icons.dehaze, color: Colors.black,  size: 26,)
            ),
            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
            ),
         Container(child: IconButton(onPressed: (){}, icon: Icon(
            Icons.notifications_none, color: Colors.black,  size: 26,)
            ),
            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
            )
        ],
        backgroundColor: Colors.white
      ),
      body: Container(
       
        child: Row(
          children: [
            Container(
              width: 130,
              height: 130,
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black,width: 2)

              ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset('logo.png',fit: BoxFit.contain),
                )
                //Image.asset('logo.png',fit: BoxFit.contain),
            ),
            Expanded(child:  Container(
              
              height: 145,
              margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [   
                     Text(
                      "시간 저장소 - 습관 행동 중독 교정을 \n심리학적으로 풀어낸 앱",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                      ),
                      ),
                     Text(
                      "2020년 12월 11일 출시",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey
                      ),
                      ),
                  
                    Text(
                      "0 원",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w900
                      ),
                      ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.favorite_border,color: Colors.grey,),
                        Text("4",style: TextStyle(color: Colors.grey,))
                      ],
                    ),

                    
                ],
              
              ),
            ))
           
            ],
        ),
      ),
      ),
    // Fiexible 오토 레이 아웃 : 전체 flex의 Int값의 % 로 크기를 지정해줄수 있게 해줍니다. 
    //   body: Row(
    //   Flexible(child: Container(color: Colors.red,),
    //       flex: 3,
    //       ),
          
    //       Flexible(child: Container(color: Colors.blue,),
    //       flex: 4,
    //       ),
    //        Flexible(child: Container(color: Colors.green,),
    //       flex: 3,
    //       ),)
    // Expanded : flex를 굳이 지정해주지 않아도 될때 사용 Expanded는 1의 flex를 가지고 있다 생각하면 되고
    // 다른 객체가 가진 크기를 제외한 전 공간을 채워줍니다. 꽉차는 박스가 필요할 경우 사용
    //  body: Row(
    //     children: [
    //       Expanded(child: Container(color: Colors.red,),
    //       ),
          
    //       Container(width: 100, color: Colors.teal,)
    //     ],
    // Row, Colum 둘다 사용가능
    // home: Scaffold(
    //   appBar: AppBar(),
    //   body: Row(
    //     children: [
    //       Expanded(child: Container(color: Colors.red,),
    //       ),
          
    //       Container(width: 100, color: Colors.teal,)
    //     ],
    //   ),
    // ),


    );
  }
}
