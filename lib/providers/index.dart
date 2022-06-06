import 'package:myfirstapp/providers/todos_provider.dart';
import 'package:myfirstapp/providers/users_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider<TodosProvider>(create: (_) => TodosProvider()),
  ChangeNotifierProvider<UserProvider>(create: (_) => UserProvider())
];
