import 'package:custom_appbar/screen/sub_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/appbar/main_app_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60), // 앱바 높이 조절
          child: MainAppBar(),
        ),
        body: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              // 버튼을 눌렀을 때, 서브 페이지로 이동하는 기능 구현
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SubScreen()),
              );
            },
            child: Text('서브 페이지로 이동'),
          ),
        ),
      ),
    );
  }
}
