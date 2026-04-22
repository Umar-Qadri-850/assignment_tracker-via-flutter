import 'package:flutter/material.dart';
import 'assignment_list.dart';

class AddAssignment extends StatelessWidget {

  final TextEditingController titleController = TextEditingController();
  final TextEditingController dueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Assignment"),
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
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                  labelText: "Assignment Title",
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(height: 15),
              TextField(
                controller: dueController,
                decoration: InputDecoration(
                  labelText: "Due Date",
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF0A1F44),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {

                  if (titleController.text.isNotEmpty) {
                    AssignmentList.assignments.add(titleController.text);
                  }

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Assignment Added")),
                  );

                  Navigator.pop(context); // go back to list
                },
                child: Text("Save"),
              )
            ],
          ),
        ),
      ),
    );
  }
}