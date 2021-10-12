import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:todo_app/newTodo/new_todo_page.dart';
import 'package:todo_app/profile/profile_page.dart';
import 'package:todo_app/todo_app.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AdaptiveRoute(
      page: TodoApp,
      path: '/',
      initial: true,
      children: [
        AdaptiveRoute(
          path: 'profile',
          name: 'ProfileRouter',
          page: EmptyRouterPage,
          children: [
            AdaptiveRoute(
              path: '',
              page: ProfilePage,
            ),
          ],
        ),
        AdaptiveRoute(
          path: 'new-todo',
          name: 'NewTodoRouter',
          page: EmptyRouterPage,
          children: [
            AdaptiveRoute(
              path: '',
              page: NewTodoPage,
            )
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
