import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'Stateful 위젯 데모',
      home: Scaffold(
        appBar: AppBar(title: Text('Stateful 위젯 데모')),
        body: _MyStatefulWidget(),
      ),
    ));

class _MyStatefulWidget extends StatefulWidget {
  @override
  State createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<_MyStatefulWidget> {
  String _buttonState;

  @override
  void initState() {
    super.initState();
    print('초기화 함.');
    _buttonState = 'ON';
  }

  @override
  void didChangeDependencies() {
    print('didChange 함.');
  }

  @override
  Widget build(BuildContext context) {
    print('build 호출함.');
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text('버튼 누르기'),
          onPressed: _onClick,
        ),
        Row(
          children: <Widget>[
            Text('버튼 상태 : '),
            Text(_buttonState),
          ],
        )
      ],
    );
  }

  void _onClick() {
    print('_onCLick() 호출됨');
    setState(() {
      print('setState 호출함.');
      if (_buttonState == 'OFF') {
        _buttonState = 'ON';
      } else {
        _buttonState = 'OFF';
      }
    });
  }

  @override
  void didUpdateWidget(_MyStatefulWidget oldWidget) {
    print('did함?');
  }

  @override
  void dispose() {}

  @override
  void deactivate() {}

}
