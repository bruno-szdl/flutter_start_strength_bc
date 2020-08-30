import 'package:start_strength_bc/classes/ClassExercise.dart';

class TrainingCard{
  int phase;
  int week;
  int dayOfTheWeek;
  List<Exercise> exercises;
  int numExercises;

  TrainingCard(int phase, int week, int dayOfTheWeek, List<Exercise> exercises){
    this.phase = phase;
    this.week = week;
    this.dayOfTheWeek = dayOfTheWeek;
    this.exercises = exercises;
    this.numExercises = exercises.length;
  }
}