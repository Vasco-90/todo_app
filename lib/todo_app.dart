import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/common/theme/cubit/theme_cubit.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Center(
        child: Container(),
      ),
    );
  }
}
