import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/common/router/app_router.gr.dart';
import 'package:todo_app/common/theme/cubit/theme_cubit.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        NewTodoRouter(),
        ProfileRouter(),
      ],
      appBarBuilder: (context, tabsRouter) => AppBar(
        centerTitle: true,
        title: const Text('Todo'),
        actions: [
          IconButton(
            onPressed: context.read<ThemeCubit>().toggleThemeMode,
            icon: context.watch<ThemeCubit>().state.themeMode == ThemeMode.light
                ? const Icon(Icons.wb_sunny_outlined)
                : const Icon(Icons.nightlight_outlined),
          ),
        ],
      ),
      bottomNavigationBuilder: (_, tabsRouter) => BottomNavigationBar(
        currentIndex: tabsRouter.activeIndex,
        onTap: tabsRouter.setActiveIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
            ),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
