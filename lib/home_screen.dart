import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 final TextEditingController _controller = TextEditingController();
 final TextEditingController _seccontroller = TextEditingController();
 final FocusNode _focusNode1 = FocusNode();
 final FocusNode _focusNode2 = FocusNode();
  double _reasult = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Calculator'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SafeArea(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextField(
                        controller: _controller,
                        focusNode: _focusNode1,
                        keyboardType: TextInputType.none,
                        textAlign: TextAlign.end,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter 1st Number',
                          label: Text('1st Number'),
                        ),
                      ),
                      TextField(
                        controller: _seccontroller,
                        focusNode: _focusNode2,
                        textAlign: TextAlign.end,
                        keyboardType: TextInputType.none,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter 2nd Number',
                          label: Text('2nd Number'),
                        ),
                      ),
                    ],
                  ),
                  // const SizedBox(
                  //   height: 100,
                  // ),
                  Text(
                    ' ${_reasult.toStringAsFixed(2)}',
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  // const SizedBox(
                  //   height: 100,
                  // ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      _buttonBar1(),
                      const SizedBox(
                        height: 10,
                      ),
                      _buttonBar2(),
                      const SizedBox(
                        height: 10,
                      ),
                      _buttonBar3(),
                      const SizedBox(
                        height: 10,
                      ),
                      _buttonBar4(),
                    ],
                  ),
                ],
              ),

          ),
        ));
  }

  Widget _buttonBar1() {
    return ButtonBar(
      alignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: _clear,
          child: const Text(
            'AC',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red),
          ),
        ),
        ElevatedButton(
          onPressed: () => _appendNumber("8"),
          child: const Text('8',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white)),
        ),
        ElevatedButton(
          onPressed: () => _appendNumber("7"),
          child: const Text('7',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white)),
        ),
        TextButton(
            onPressed: _addition,
            child: const Text(
              '+',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.greenAccent),
            )),
      ],
    );
  }

  Widget _buttonBar2() {
    return ButtonBar(
      alignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () => _appendNumber("6"),
          child: const Text('6',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white)),
        ),
        ElevatedButton(
          onPressed: () => _appendNumber("5"),
          child: const Text('5',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white)),
        ),
        ElevatedButton(
          onPressed: () => _appendNumber("4"),
          child: const Text('4',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white)),
        ),
        TextButton(
            onPressed: _subtract,
            child: const Text(
              '-',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.greenAccent),
            )),
      ],
    );
  }

  Widget _buttonBar3() {
    return ButtonBar(
      alignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () => _appendNumber("3"),
          child: const Text('3',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white)),
        ),
        ElevatedButton(
          onPressed: () => _appendNumber("2"),
          child: const Text('2',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white)),
        ),
        ElevatedButton(
          onPressed: () => _appendNumber("1"),
          child: const Text('1',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white)),
        ),
        TextButton(
            onPressed: _multiplication,
            child: const Text(
              '*',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.greenAccent),
            )),
      ],
    );
  }

  Widget _buttonBar4() {
    return ButtonBar(
      alignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () => _appendNumber("9"),
          child: const Text('9',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white)),
        ),
        ElevatedButton(
          onPressed: () => _appendNumber("0"),
          child: const Text('0',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white)),
        ),
        ElevatedButton(
          onPressed: () => _appendNumber("."),
          child: const Text('.',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white)),
        ),
        TextButton(
            onPressed: _division,
            child: const Text(
              '/',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.greenAccent),
            )),
      ],
    );
  }

  void _clear() {
    _seccontroller.clear();
    _controller.clear();
    _reasult = 0;
    setState(() {});
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

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    _seccontroller.dispose();
    super.dispose();

  }

}
