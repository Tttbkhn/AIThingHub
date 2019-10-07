import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
    theme: ThemeData(primarySwatch: Colors.green),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double myTextSize = 20.0;
    final double myIconSize = 40.0;
    final TextStyle myTextStyle =
        TextStyle(color: Colors.blueGrey, fontSize: myTextSize);

    var column = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        MyCard(
          title: Text(
            "Đổi mật khẩu",
            style: myTextStyle,
          ),
        ),
        MyCard(
          title: Text(
            "Hướng dẫn sử dụng",
            style: myTextStyle,
          ),
        ),
        MyCard(
          title: Text(
            "Chính sách bảo mật",
            style: myTextStyle,
          ),
        ),
        MyCard(
          title: Text(
            "Phản hồi & Góp ý",
            style: myTextStyle,
          ),
        ),
        MyCard(
          title: Text(
            "Thông tin ứng dụng",
            style: myTextStyle,
          ),
        ),
        MyCard(
          title: Text(
            "Đăng xuất",
            style: TextStyle(
              color: Colors.red,
              fontSize: myTextSize,
            ),
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Cài đặt"),
      ),
      body: Container(
        padding: const EdgeInsets.only(bottom: 2.0),
        child: SingleChildScrollView(
          child: column,
          //   scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final Widget icon;
  final Widget title;

  bool check = false;

  MyCard({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 1.0),
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              this.title,
              check ? null : Icon(Icons.arrow_back)
            ],
          ),
        ),
      ),
    );
  }
}
