import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10, top: 5),
      height: 88, //BottomBar의 높이
      decoration: BoxDecoration(
        color: Colors.white, //BottomBar 색상
        boxShadow: [BoxShadow(blurRadius: 1, color: Colors.grey)], //BottomBar와 화면을 구분하는 그림자
      ),
      child: TabBar(
        tabs: [
          //BottomBar 아이콘 리스트 (페이지와 똑같은 순서로)
          Tab(icon: Icon(Icons.home, size: 28), text: '홈'),
          Tab(icon: Icon(Icons.account_balance_wallet, size: 28), text: '내 지갑'),
          Tab(icon: Icon(Icons.settings, size: 28), text: '설정'),
        ],
        labelColor: Color(0xffFF4156), //선택된 메뉴 색상
        unselectedLabelColor: Colors.grey, //선택되지 않은 메뉴 색상
        labelStyle: TextStyle(fontSize: 16), //메뉴 글씨 스타일 설정
        indicatorColor: Colors.transparent, //인디케이터 없애기
      ),
    );
  }
}
