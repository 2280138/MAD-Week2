import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Todo List',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 183, 58, 104)),
      ),
      home: const TodoPage(),
    );
  }
}

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My To-Do List"),
        backgroundColor: const Color.fromARGB(255, 183, 58, 116),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            buildTodoItem("Complete Flutter Assignment", true),
            buildTodoItem("Buy Groceries", true),
            buildTodoItem("Organize Closet", false),
            buildTodoItem("Read a Book", true),
            buildTodoItem("To Do Research For The Upcoming Project", false),
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 183, 58, 143),
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget buildTodoItem(String task, bool isDone) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Checkbox(
          value: isDone,
          onChanged: (value) {},
        ),
        title: Text(task, style: TextStyle(decoration: isDone ? TextDecoration.lineThrough : null)),
        trailing: IconButton(
          icon: const Icon(Icons.delete, color: Colors.red),
          onPressed: () {},
        ),
      ),
    );
  }
}
