import 'package:flutter/material.dart';
import 'package:job_opening/widgets/call_dialog.dart';
import 'package:job_opening/screens/anti_gangsta_screen.dart';
import 'package:job_opening/screens/hire_screen.dart';
import 'package:job_opening/screens/company_screen.dart';
import 'package:job_opening/screens/top_screen.dart';
import 'package:flutter_html/flutter_html.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const TopScreen(),
    const HireScreen(),
    const CompanyScreen(),
    const AntiGangstaScreen(),
  ];

  final List<String> _titles = [
    "タクシードライバー募集(埼玉県さいたま市桜区の求人)",
    "エントリーは簡単3STEP!",
    "地域密着、24時間だから固定客が圧倒的に多い!",
    "暴力団等反社会的勢力排除宣言",
  ];

  final List<Color> _colors = [
    const Color.fromRGBO(11, 23, 41, 1),
    const Color.fromRGBO(11, 23, 41, 1),
    const Color.fromRGBO(11, 23, 41, 1),
    Colors.black,
  ];

  @override
  Widget build(BuildContext context) {
    // var screenWith = MediaQuery.of(context).size.width;
    // var screenHeight = MediaQuery.of(context).size.height;
    // print("ヨコの論理ピクセル: $screenWith。タテの論理ピクセル: $screenHeight。");

    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        leading: Image.asset("assets/images/logo_k.png"),
        centerTitle: false,
        backgroundColor: _colors[_currentIndex],
        title: Text(
          _titles[_currentIndex],
          style: const TextStyle(
            fontSize: 18.0,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color.fromRGBO(11, 23, 41, 1),
              Color.fromRGBO(11, 23, 41, 0.95),
              Color.fromRGBO(11, 23, 41, 0.85),
            ],
          ),
        ),
        // color: Color.fromRGBO(11, 23, 41, 0.93),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Html(
                  data: """
                  <!-- Insert your HTML here -->
                  <meta name="description" content="平和観光 求人 タクシー 運転手 募集 埼玉県 さいたま市 桜区 暴力団等反社会的勢力排除宣言">
                  <meta name="keywords" content="さいたま市, タクシー, ドライバー募集, 運転手募集, 平和観光, 求人, 暴力団等反社会的勢力排除宣言">
                  <meta name="author" content="平和観光">
                  """,
                ),
                _pages[_currentIndex],
              ],
            ),
          ),
        ),
      ),
      endDrawer: _rightDrawer(),
      floatingActionButton: _madeFloatingActionButton(),
      bottomNavigationBar: _madeBottomNavBar(),
    );
  }

  Widget _rightDrawer() {
    return Drawer(
      width: 210.0,
      child: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('トップ'),
            onTap: () {
              setState(() {
                _currentIndex = 0;
              });
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.explore),
            title: const Text('採用までの流れ'),
            onTap: () {
              setState(() {
                _currentIndex = 1;
              });
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.business),
            title: const Text('会社案内'),
            onTap: () {
              setState(() {
                _currentIndex = 2;
              });
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.local_police),
            title: const Text('暴力団等反社会的勢力排除宣言'),
            onTap: () {
              setState(() {
                _currentIndex = 3;
              });
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  Widget _madeFloatingActionButton() {
    return FloatingActionButton(
      backgroundColor: const Color.fromRGBO(193, 193, 193, 0.85),
      splashColor: Colors.amberAccent,
      elevation: 4.0,
      tooltip: "電話をする",
      child: const Icon(Icons.phone),
      // onPressed: _launchURL,
      onPressed: () {
        showDialog(
          context: context,
          builder: (_) {
            return WillPopScope(
              child: const PhoneAlert(),
              onWillPop: () async => false,
            );
          },
        );
      },
    );
  }

  Widget _madeBottomNavBar() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'トップ',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: '採用までの流れ',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: '会社案内',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_police),
          label: '暴力団等反社会的勢力排除宣言',
        ),
      ],
      // タイプの設定
      type: BottomNavigationBarType.fixed,
      // 現在選択されているフッターメニューのインデックス
      currentIndex: _currentIndex,
      // フッター領域の影
      elevation: 0,
      // フッターメニュータップ時の処理
      onTap: (int index) {
        _currentIndex = index;
        setState(
          () {},
        );
      },
      // 選択中フッターメニューの色
      fixedColor: Colors.red[900],
    );
  }
}
