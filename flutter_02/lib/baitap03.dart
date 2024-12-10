import 'package:flutter/material.dart';
import 'examples2.dart'; // LoginScreen
import 'baitap01.dart'; // ProfilePage
import 'baitap02.dart'; // HomeScreen

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool _isLoggedIn = false; // Trạng thái đăng nhập
  int _currentIndex = 0; // Trạng thái của BottomNavigationBar

  final List<Widget> _screens = [
    const HomeScreen(),
    const ProfilePage(),
  ];

  void _onLoginSuccess() {
    setState(() {
      _isLoggedIn = true; // Cập nhật trạng thái đăng nhập
    });
  }

  @override
  Widget build(BuildContext context) {
    // Nếu chưa đăng nhập, hiển thị màn hình Login
    if (!_isLoggedIn) {
      return LoginScreen(onLoginSuccess: _onLoginSuccess);
    }

    // Nếu đã đăng nhập, hiển thị Dashboard
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Hồ sơ',
          ),
        ],
      ),
    );
  }
}
