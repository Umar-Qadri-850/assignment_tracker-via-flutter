import 'package:flutter/material.dart';

class AssignmentList extends StatelessWidget {
  // ✅ Shared list (now accessible from other files)
  static List<String> assignments = [
    "Math Assignment",
    "Computer Science Project",
    "Physics Lab Report"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assignments"),
        backgroundColor: const Color(0xFF0A1F44),
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF0A1F44),
              Colors.white,
            ],
          ),
        ),
        child: ListView.builder(
          itemCount: assignments.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                title: Text(assignments[index]),
                subtitle: const Text("Due Soon"),
              ),
            );
          },
        ),
      ),
    );
  }
}