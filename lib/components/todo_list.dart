import 'package:flutter/material.dart';
import 'package:myfirstapp/components/todo_item.dart';
import 'package:myfirstapp/providers/todos_provider.dart';
import 'package:provider/provider.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TodosProvider>(builder: (context, provider, _) {
      return ListView.builder(
        itemCount: provider.todos.length,
        itemBuilder: (BuildContext context, int index) {
          return TodoItem(todo: provider.todos[index]);
        },
      );
    });
  }
}


// Provider   ---- > State management solution
//      define a state (count)
//      define state modifier function -> notifyListerners()
// 
// Consumer
//      Widget / InitState / FutureBuilder
//
// MultiProvider ---> Top level widget lae wrap garxam




// SINGLE WIDGET 1

// define a state (count)

// state modifier function (incrementCount, decrementCount, clearCount)

// presentation widget - > display (COUNTER WIDGET  -> Text)

// Widget / InitState -> state modifier function trigger


// SINGLE WIDGET 2

// define a state (todo)

// state modifier function (incrementCount, decrementCount, clearCount)

// presentation widget - > display (COUNTER WIDGET  -> Text)

// Widget / InitState -> state modifier function trigger