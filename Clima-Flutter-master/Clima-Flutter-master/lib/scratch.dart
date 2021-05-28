void main() {
  performTask();
}

void performTask() async {
  Task1();
  String st = await Task2();
  Task3(st);
}

void Task1() {
  String result = 'Task 1 complete';
  print(result);
}

Future<String> Task2() async {
  Duration threesec = Duration(seconds: 3);
  //sleep(threesec);
  String result;
  await Future.delayed(threesec, () {
    result = 'Task 2 complete';
    print(result);
  });
  return result;
}

void Task3(String result1) {
  String result = 'Task 3 complete';
  print(result + ' received task 2 string: $result1');
}
