import 'dart:io';

void main() {
  print('--- Student Grade Calculator ---');

  stdout.write('Enter student name: ');
  String studentName = stdin.readLineSync() ?? 'Unknown Student';

  stdout.write('Enter attendance score (0-100): ');
  int attendanceScore = int.parse(stdin.readLineSync() ?? '0');

  stdout.write('Enter final exam score (0-100): ');
  double examScore = double.parse(stdin.readLineSync() ?? '0.0');

  const double attendanceWeight = 0.30;
  const double examWeight = 0.70;

  double finalGrade = (attendanceScore * attendanceWeight) + (examScore * examWeight);
  int roundedGrade = finalGrade ~/ 1;

  const double passingThreshold = 75.0;
  bool isPassing = finalGrade >= passingThreshold;

  print('\n=== Final Grade Summary ===');
  print('Student Name: $studentName');
  print('Attendance: $attendanceScore/100 (30% Weight)');
  print('Exam Score: $examScore/100 (70% Weight)');
  print('Calculated Final Grade: ${finalGrade.toStringAsFixed(2)}');
  print('Rounded Whole Grade: $roundedGrade');
  print('Passed the Course: $isPassing');

  if (isPassing) {
    print('Pasado ka boi');
  } else {
    print('Hindi ka pasado boi');
  }
}