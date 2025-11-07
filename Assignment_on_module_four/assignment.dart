import 'dart:io';

void main()
{
  List<Map> students = [];
  
  print("Enter no of Students : ");
  
  int numofStudents = int.parse(stdin.readLineSync()!);

  Set<int> ids = {};
  
  for(int i=0;i<numofStudents;i++)
    {
      print('Enter name of the student : ');

      String name = stdin.readLineSync()!;

      print('Enter the id of the student : ');

      int id = int.parse(stdin.readLineSync()!);

      if(ids.contains(id)){
        print('ID already exists');
      }else {
        ids.add(id);
      }

      print('Enter the score the student get : ');

      int score = int.parse(stdin.readLineSync()!);

      students.add({
        'name': name,
        'id': id,
        'score': score
      });

    }
}