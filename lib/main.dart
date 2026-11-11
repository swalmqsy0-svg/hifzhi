
import 'package:flutter/material.dart';

void main() {
  runApp(const HifzhiApp());
}

class HifzhiApp extends StatelessWidget {
  const HifzhiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'حِفظي',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Arial',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF145A43),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: const Color(0xFFF7F5ED),
        appBar: AppBar(
          backgroundColor: const Color(0xFF145A43),
          foregroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'حِفظي',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(20),
            children: [
              const SizedBox(height: 25),
              const Icon(
                Icons.menu_book_rounded,
                size: 85,
                color: Color(0xFFC49A45),
              ),
              const SizedBox(height: 18),
              const Text(
                'أهلاً بك في حِفظي',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF145A43),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'رفيقك في حفظ كتاب الله، آيةً آية',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 35),
              _menuButton(
                context,
                Icons.mic,
                'ابدأ التسميع',
                'ميزة التسميع قيد التجهيز',
              ),
              _menuButton(
                context,
                Icons.menu_book,
                'القرآن الكريم',
                'قائمة السور قيد التجهيز',
              ),
              _menuButton(
                context,
                Icons.refresh,
                'المراجعة اليومية',
                'المراجعة اليومية قيد التجهيز',
              ),
              _menuButton(
                context,
                Icons.settings,
                'الإعدادات',
                'الإعدادات قيد التجهيز',
              ),
              const SizedBox(height: 30),
              const Text(
                'حِفظي • الإصدار الأول',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _menuButton(
    BuildContext context,
    IconData icon,
    String title,
    String message,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 13),
      child: SizedBox(
        height: 58,
        child: ElevatedButton.icon(
          onPressed: () => showMessage(context, message),
          icon: Icon(icon),
          label: Text(
            title,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF145A43),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
          ),
        ),
      ),
    );
  }
}
0

