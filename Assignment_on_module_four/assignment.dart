import 'dart:io';

void main() {
  List<Map> students = [];
  Set<String> ids = Set();

  while (true) {
    print('\n1.Add  2.View  3.Exit');
    print('Choice: ');
    String choice = stdin.readLineSync()!;

    if (choice == '1') {
      print('Name:'); String name = stdin.readLineSync()!;
      print('ID:'); String id = stdin.readLineSync()!;

      if (ids.contains(id)) {
        print('ID exists!');
        continue;
      }

      print('Score:');
      double score = double.parse(stdin.readLineSync()!);

      String grade = score >= 80 ? 'A' :
      score >= 70 ? 'B' :
      score >= 60 ? 'C' :
      score >= 50 ? 'D' : 'F';

      students.add({'name': name, 'id': id, 'score': score, 'grade': grade});
      ids.add(id);
      print('Added!');

    } else if (choice == '2') {
      if (students.isEmpty) {
        print('No students!');
        continue;
      }

      students.sort((a, b) => b['score'].compareTo(a['score']));

      print('\n--- STUDENTS ---');
      for (var s in students) {
        print('${s['name']} - ${s['score']} - ${s['grade']}');
      }
      print('-----------------');
      print('\nTotal: ${students.length}');
      print('Highest: ${students.first['score']}');
      print('Lowest: ${students.last['score']}');

    } else if (choice == '3') {
      break;
    }
  }
}