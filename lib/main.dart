import 'package:flutter/material.dart';

void main() {
  runApp(const PlannerApp());
}

class PlannerApp extends StatelessWidget {
  const PlannerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9EFE6), // Light beige background
      body: Stack(
        children: [
          // Top left overlapping circles
          Positioned(
            top: -60,
            left: -60,
            child: CircleAvatar(
              radius: 80,
              backgroundColor: const Color(0xFF8C9686),
              child: Align(
                alignment: Alignment.bottomRight,
                child: CircleAvatar(
                  radius: 45,
                  backgroundColor: const Color(0xFFBCCDB6).withOpacity(0.8),
                ),
              ),
            ),
          ),

          // Bottom right overlapping circles
          Positioned(
            bottom: -50,
            right: -50,
            child: CircleAvatar(
              radius: 70,
              backgroundColor: const Color(0xFF8C9686),
              child: Align(
                alignment: Alignment.topLeft,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: const Color(0xFFBCCDB6).withOpacity(0.8),
                ),
              ),
            ),
          ),

          // Main content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Calendar icon + Welcome text container
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xFF9BAA96),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.calendar_today_outlined, color: Colors.black),
                        ],
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "Welcome to Planner",
                        style: TextStyle(
                          fontFamily: 'Serif',
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),

                // Next button
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFF9BAA96),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 4,
                        offset: const Offset(2, 2),
                      )
                    ],
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_forward, color: Colors.black),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
