// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i5;
import 'package:todo_app/newTodo/new_todo_page.dart' as _i4;
import 'package:todo_app/profile/profile_page.dart' as _i3;
import 'package:todo_app/todo_app.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    TodoApp.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.TodoApp());
    },
    ProfileRouter.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    NewTodoRouter.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    ProfileRoute.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.ProfilePage());
    },
    NewTodoRoute.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.NewTodoPage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(TodoApp.name, path: '/', children: [
          _i2.RouteConfig(ProfileRouter.name,
              path: 'profile',
              children: [_i2.RouteConfig(ProfileRoute.name, path: '')]),
          _i2.RouteConfig(NewTodoRouter.name,
              path: 'new-todo',
              children: [_i2.RouteConfig(NewTodoRoute.name, path: '')])
        ])
      ];
}

/// generated route for [_i1.TodoApp]
class TodoApp extends _i2.PageRouteInfo<void> {
  const TodoApp({List<_i2.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'TodoApp';
}

/// generated route for [_i2.EmptyRouterPage]
class ProfileRouter extends _i2.PageRouteInfo<void> {
  const ProfileRouter({List<_i2.PageRouteInfo>? children})
      : super(name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileRouter';
}

/// generated route for [_i2.EmptyRouterPage]
class NewTodoRouter extends _i2.PageRouteInfo<void> {
  const NewTodoRouter({List<_i2.PageRouteInfo>? children})
      : super(name, path: 'new-todo', initialChildren: children);

  static const String name = 'NewTodoRouter';
}

/// generated route for [_i3.ProfilePage]
class ProfileRoute extends _i2.PageRouteInfo<void> {
  const ProfileRoute() : super(name, path: '');

  static const String name = 'ProfileRoute';
}

/// generated route for [_i4.NewTodoPage]
class NewTodoRoute extends _i2.PageRouteInfo<void> {
  const NewTodoRoute() : super(name, path: '');

  static const String name = 'NewTodoRoute';
}
