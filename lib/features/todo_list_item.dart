import 'package:flutter/material.dart';

class TodoListItem extends StatelessWidget {
  final String todoText;
  final Function onDismissed;

  TodoListItem({
    required this.todoText,
    required this.onDismissed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Dismissible(
          key: UniqueKey(),
          onDismissed: (direction) {
            onDismissed();
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Task dismissed'),
              ),
            );
          },
          background: Container(
            color: const Color.fromARGB(255, 255, 45, 30),
            alignment: Alignment.centerRight,
            child: const Icon(Icons.delete),
          ),
          child: ListTile(
            title: Text(todoText),
          ),
        ),
        const Divider(
          color: Colors.black,
          height: 5.0,
        ),
      ],
    );
  }
}
