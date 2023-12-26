import 'package:flutter/material.dart';
import 'package:todo_list/theme/theme.dart';
import 'todo_list_item.dart';

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoListScreen(),
      theme: darkTheme,
    );
  }
}

class TodoListScreen extends StatefulWidget {
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  final List<String> _todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('TODO List'),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: Theme.of(context).textTheme.bodyMedium,
                    controller: _textEditingController,
                    decoration: const InputDecoration(
                      hintText: 'Enter your todo',
                      hintStyle: TextStyle(
                        color: Color.fromARGB(170, 255, 255, 255),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        // Allow or disable the button depending on whether the text field is empty
                      });
                    },
                  ),
                ),
                ValueListenableBuilder(
                  valueListenable: _textEditingController,
                  builder: (context, textEditingController, child) {
                    return ElevatedButton(
                      onPressed: textEditingController.text.isEmpty
                          ? null
                          : () {
                              setState(() {
                                _todos.add(textEditingController.text);
                                _textEditingController.clear();
                              });
                            },
                      style: Theme.of(context).elevatedButtonTheme.style,
                      child: child!,
                    );
                  },
                  child: const Text('Add'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _todos.length,
              itemBuilder: (context, index) {
                return TodoListItem(
                  todoText: _todos[index],
                  onDismissed: () {
                    setState(() {
                      _todos.removeAt(index);
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
