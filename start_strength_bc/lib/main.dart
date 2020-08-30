import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:start_strength_bc/classes/ClassExercise.dart';
import 'package:start_strength_bc/classes/ClassTrainingCard.dart';
import 'package:start_strength_bc/functions/FunctionAddTrainingCard.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List _trainingCardsList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Starting Strength BC'),
        backgroundColor: Colors.black38,
        centerTitle: true,
      ),
      body:
      Container(
        child: Column(
          children: <Widget>[
            Expanded(
                child: ListView.builder(
                    padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                    itemCount: 1, //_trainingCardsList.length,
                    itemBuilder: (context, index){
                      List<Exercise> exercisesList = [];
                      Exercise exercise = new Exercise('Agachamento', 3, 5, 100, "sim");
                      exercisesList.add(exercise);
                      TrainingCard trainingCard = new TrainingCard(1, 1, 1, exercisesList);
                      return addTrainingCard(trainingCard);
                    })
            )
          ],
        ),
      )
    );
  }

  Future<File> _getFile() async {
    final directory = await getApplicationDocumentsDirectory();
    return File("${directory.path}/data.json");
  }

  Future<File> _saveData() async {
    String data = json.encode(_trainingCardsList);

    final file = await _getFile();
    return file.writeAsString(data);
  }

  Future<String> _readData() async {
    try {
      final file = await _getFile();

      return file.readAsString();
    } catch (e) {
      return null;
    }
  }
}






