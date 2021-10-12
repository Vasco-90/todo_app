import 'package:auto_route/annotations.dart';
import 'package:todo_app/todo_app.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page, Route',
  routes: [
    AdaptiveRoute(page: TodoApp, initial: true),
  ],
)
class $AppRouter {}
