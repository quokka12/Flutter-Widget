import 'package:flutter/material.dart';

import 'bottom_bar.dart';

class BottomBarScreen extends StatelessWidget {
  const BottomBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, //페이지 수
      child: Scaffold(
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            //페이지 리스트
            SafeArea(child: Text('마이 스크린1', style: TextStyle(fontSize: 40))),
            SafeArea(child: Text('마이 스크린2', style: TextStyle(fontSize: 40))),
            SafeArea(child: Text('마이 스크린3', style: TextStyle(fontSize: 40))),
          ],
        ),
        bottomNavigationBar: BottomBar(), // 커스텀 바텀바
      ),
    );
  }
}
