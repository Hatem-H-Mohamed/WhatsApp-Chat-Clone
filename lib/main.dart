import 'package:flutter/material.dart';
import 'package:whats_app_clone/view/screens/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "whats_app_clone",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.red),
      ),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,

      home: ChatScreen(),
    );
  }
}
