import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        primarySwatch: Colors.blue,
        useMaterial3: false,
      ),
      home: Scaffold(
        body: Center(
          child: Row(
            children: [
              Container(
                width: 42,
                height: 42,
                //padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF00AEFF),
                      Color(0xFF0076FF),
                    ],
                  ),
                ),
                child: const Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 8),
              Container(
                child: const Text(
                  'Home',
                  style: TextStyle(
                    color: Color(0xFF242629),
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
