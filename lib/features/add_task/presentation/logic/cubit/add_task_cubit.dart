import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:up_tolist/features/add_task/data/models/task_model.dart';

part 'add_task_state.dart';

class AddTaskCubit extends Cubit<AddTaskState> {
  AddTaskCubit() : super(AddTaskInitial());

  addTask(TaskModel task) async{
    emit(AddTaskLoding());
    try {
      var tasksBox = Hive.box<TaskModel>('tasks_box');
      await tasksBox.add(task);
      emit(AddTaskSuccess());

    } catch (e) {
      emit(AddTaskFailure(e.toString()));
    }
  }
}
