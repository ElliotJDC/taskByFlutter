import 'package:flutter/material.dart';
import '../../entity/Task.dart';

class TaskRow extends StatefulWidget {
  final Task task;
  final double dotSize = 12.0;
  final Animation<double> animation;

  const TaskRow({Key key, this.task, this.animation}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return new TaskRowState();
  }
}

class TaskRowState extends State<TaskRow> {
  @override
  Widget build(BuildContext context) {
    return new FadeTransition(
      opacity: widget.animation,
      child: new SizeTransition(
        sizeFactor: widget.animation,
        child:  new Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: new Row(
            children: <Widget>[
              new Padding(
                padding: new EdgeInsets.symmetric(horizontal: 32.0 - widget.dotSize / 2),
                child: new Container(
                  height: widget.dotSize,
                  width: widget.dotSize,
                  decoration: new BoxDecoration(shape: BoxShape.circle, color: widget.task.color),
                )
              ),
              new Expanded(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(
                      widget.task.name,
                      style: new TextStyle(fontSize: 18.0),
                    ),
                    new Text(
                      widget.task.category,
                      style: new TextStyle(fontSize: 12.0, color: Colors.grey),
                    )
                  ]
                ) 
              ),
              new Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: new Text(
                  widget.task.time,
                  style: new TextStyle(fontSize: 12.0, color: Colors.grey)
                )
              )
            ]
          )
        ),
      ),  
    );
  }
}