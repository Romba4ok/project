import 'package:flutter/material.dart';
import 'package:myapp/camera.dart';
import 'package:myapp/profile.dart';
import 'package:myapp/shop.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  runApp(MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // Список страниц для навигации
  final List<Widget> _pages = [
    HomeScreen(),
    ShopScreen(),
    CameraScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Обновление индекса выбранного элемента
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Отображаем текущую страницу
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Магазин',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Камера',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF07DC00),
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

// Страницы для навигации
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 16.0, top: 16.0),
          child: Icon(
            Icons.person,
            size: 30,
            color: Color(0xFF07DC00), // Устанавливаем цвет иконки
          ),
        ),
      ],
    ),);
  }
}
