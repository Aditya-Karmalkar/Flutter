void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String parameterOfTask3 = await task2();
  task3(parameterOfTask3);
}

void task1() {
  String result = 'task 1 done';
  print('Task 1 complete.');
}

Future task2() async {
  Duration threeSeconds = Duration(seconds: 3);

  String result = '';

  await Future.delayed(threeSeconds, () {
    result = 'task 2 done';
    print('Task 2 complete.');
  });
  return result;
}

void task3(String task2data) {
  String result = 'task 2 done';
  print('Task 3 complete with $task2data');
}
