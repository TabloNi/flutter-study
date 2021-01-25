import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'hello flutter',
      home: Scaffold(
        appBar: AppBar(title: Text(' sdfsd')),
        body: _FirstStatefulWidget(),
      ),
    ));

class _FirstStatefulWidget extends StatefulWidget {
  @override
  State createState() => _FirstStatefulWidgetState();
}

class _FirstStatefulWidgetState extends State<_FirstStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Text('이것은 stateful 위젯임.');
  }
}
