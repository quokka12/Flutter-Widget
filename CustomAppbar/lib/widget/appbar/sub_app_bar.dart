import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubAppBar extends StatelessWidget {
  const SubAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              //뒤로 가는 버튼 구현
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back, color: Colors.black87, size: 30),
            ),
            Text(
              '서브 페이지 앱바',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(width: 30),
          ],
        ),
      ),
    );
  }
}
