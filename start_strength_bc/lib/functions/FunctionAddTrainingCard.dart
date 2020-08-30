import 'package:flutter/material.dart';
import 'package:start_strength_bc/classes/ClassTrainingCard.dart';
import 'package:start_strength_bc/functions/FunctionExerciseRow.dart';

Widget addTrainingCard(TrainingCard trainingCard){
  return Card(
    child: Column(
      children: [
        Row(
        children: [
          Expanded(
            child: Text('Semana ${trainingCard.week}'),
          )
        ]),
        Row(
            children: [
              Expanded(
                child: Text('Dia ${trainingCard.dayOfTheWeek}'),
              )
            ]),
        Row(
          children: [
            Expanded(
              child: Text('Exercício'),
            ),
            Expanded(
              child: Text('Séries'),
            ),
            Expanded(
              child: Text('Repetições'),
            ),
            Expanded(
              child: Text('Carga'),
            ),
            Expanded(
              child: Text('Feito'),
            )
          ],
        ),
        exerciseRow(trainingCard.exercises[0]),
        exerciseRow(trainingCard.exercises[0]),
        exerciseRow(trainingCard.exercises[0]),
      ],
    ),
  );
}