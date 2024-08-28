import 'package:flutter/material.dart';
import 'function.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _controller = TextEditingController();
  TextEditingController _seccontroller = TextEditingController();
  FocusNode _focusNode1 = FocusNode();
  FocusNode _focusNode2 = FocusNode();
  double _reasult = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _controller,
            focusNode: _focusNode1,
            keyboardType: TextInputType.none,
          ),
          TextField(
            controller: _seccontroller,
            focusNode: _focusNode2,
            keyboardType: TextInputType.none,
          ),
          const SizedBox(
            height: 10,
          ),
          Text('Reasult ${_reasult.toStringAsFixed(2)}'),

          _buttonBar1(),
          const SizedBox(
            height: 10,
          ),
          _buttonBar2(),
          const SizedBox(
            height: 10,
          ),
          _buttonBar3(),

        ],
      ),
    ));
  }

  Widget _buttonBar1(){
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () => _appendNumber("1"),
          child: const Text('1'),
        ),
        ElevatedButton(
          onPressed: () => _appendNumber("2"),
          child: const Text('2'),
        ),
        ElevatedButton(
          onPressed: () => _appendNumber("3"),
          child: const Text('3'),
        ),
        ElevatedButton(
          onPressed: () => _appendNumber("4"),
          child: const Text('4'),
        ),
        ElevatedButton(
          onPressed: () => _appendNumber("5"),
          child: const Text('5'),
        ),
      ],
    );
  }
  Widget _buttonBar2(){
    return ButtonBar(
      alignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () => _appendNumber("6"),
          child: const Text('6'),
        ),
        ElevatedButton(
          onPressed: () => _appendNumber("7"),
          child: const Text('7'),
        ),
        ElevatedButton(
          onPressed: () => _appendNumber("8"),
          child: const Text('8'),
        ),
        ElevatedButton(
          onPressed: () => _appendNumber("9"),
          child: const Text('9'),
        ),
        ElevatedButton(
          onPressed: () => _appendNumber("0"),
          child: const Text('0'),
        ),
      ],
    );
  }
  Widget _buttonBar3(){
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: [
        TextButton(
            onPressed: _addition,
            child: const Text(
              '+',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            )),
        TextButton(
            onPressed: _subtract,
            child: const Text(
              '-',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            )),
        TextButton(
            onPressed: _multiplication,
            child: const Text(
              '*',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            )),
        TextButton(
            onPressed: _division,
            child: const Text(
              '/',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            )),
      ],
    );
  }

  void _appendNumber(String number) {
    if (_focusNode1.hasFocus) {
      _controller.text += number;
    } else if (_focusNode2.hasFocus) {
      _seccontroller.text += number;
    }

    setState(() {});
  }

  void _addition() {
    double firstnum = double.parse(_controller.text);
    double sectnum = double.parse(_seccontroller.text);
    _reasult = firstnum + sectnum;
    setState(() {});
  }

  void _subtract() {
    double firstnum = double.parse(_controller.text);
    double sectnum = double.parse(_seccontroller.text);
    _reasult = firstnum - sectnum;
    setState(() {});
  }

  void _multiplication() {
    double firstnum = double.parse(_controller.text);
    double sectnum = double.parse(_seccontroller.text);
    _reasult = firstnum * sectnum;
    setState(() {});
  }

  void _division() {
    double firstnum = double.parse(_controller.text);
    double sectnum = double.parse(_seccontroller.text);
    _reasult = firstnum / sectnum;
    setState(() {});
  }
}
