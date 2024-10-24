import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  // Text Editing Controller
  TextEditingController myController = TextEditingController();

  // Greet user message
  String greetingMessage = "";

  // Greet user method
  void greetUser() {
    setState(() {
      greetingMessage = "Hello, " + myController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // TextField
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Write your name?",
                ),
              ),
              SizedBox(height: 20), // Add space between TextField and Button

              // Button
              ElevatedButton(
                onPressed: greetUser,
                child: Text("Tap"),
              ),
              SizedBox(height: 20), // Add space between Button and Greeting message

              // Greeting message
              Text(
                greetingMessage,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
