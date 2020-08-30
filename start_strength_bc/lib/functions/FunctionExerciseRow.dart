import 'package:flutter/material.dart';

Row exerciseRow(exercise){
  return Row(
    children: [
      Expanded(
        child: Text('${exercise.name}'),
      ),
      Expanded(
        child: Text('${exercise.sets}'),
      ),
      Expanded(
        child: Text('${exercise.reps}'),
      ),
      Expanded(
        child: Text('${exercise.weight} kg'),
      ),
      Expanded(
        child: Text('${exercise.done}'),
      )
    ],
  );
}