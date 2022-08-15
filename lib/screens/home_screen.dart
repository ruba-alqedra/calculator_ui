import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/custom_ElevatedButton.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  dynamic _text = 0;
  int _old = 0;
  String _operation = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Calculator',
          style: GoogleFonts.nunito(fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                child: Text(
                  _text.toString(),
                  style: GoogleFonts.nunito(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: CustomElevatedButton(
                    number: '7',
                    color: 0xFF808080,
                    onAction: () {
                      setState(() {
                        _text = 7;
                        _text.toString();
                      });
                    },
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                CustomElevatedButton(
                  number: '8',
                  color: 0xFF808080,
                  onAction: () {
                    setState(() {
                      _text = 8;
                      _text.toString();
                    });
                  },
                ),
                const SizedBox(
                  width: 30,
                ),
                CustomElevatedButton(
                  number: '9',
                  color: 0xFF808080,
                  onAction: () {
                    setState(() {
                      _text = 9;
                      _text.toString();
                    });
                  },
                ),
                const SizedBox(
                  width: 30,
                ),
                CustomElevatedButton(
                  number: '/',
                  color: 0xFFFEB139,
                  onAction: () {
                    setState(() {
                      _old = 0;
                      _old = _text;
                      _operation = '/';
                    });
                  },
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 30),
              child: Row(
                children: [
                  CustomElevatedButton(
                    number: '4',
                    color: 0xFF808080,
                    onAction: () {
                      setState(() {
                        _text = 4;
                        _text.toString();
                      });
                    },
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  CustomElevatedButton(
                    number: '5',
                    color: 0xFF808080,
                    onAction: () {
                      setState(() {
                        _text = 5;
                        _text.toString();
                      });
                    },
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  CustomElevatedButton(
                    number: '6',
                    color: 0xFF808080,
                    onAction: () {
                      setState(() {
                        _text = 6;
                        _text.toString();
                      });
                    },
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  CustomElevatedButton(
                    number: '*',
                    color: 0xFFFEB139,
                    onAction: () {
                      setState(() {
                        _old = 0;
                        _old = _text;
                        _operation = '*';
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 30),
              child: Row(
                children: [
                  CustomElevatedButton(
                    number: '1',
                    color: 0xFF808080,
                    onAction: () {
                      setState(() {
                        _text = 1;
                        _text.toString();
                      });
                    },
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  CustomElevatedButton(
                    number: '2',
                    color: 0xFF808080,
                    onAction: () {
                      setState(() {
                        _text = 2;
                        _text.toString();
                      });
                    },
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  CustomElevatedButton(
                    number: '3',
                    color: 0xFF808080,
                    onAction: () {
                      setState(() {
                        _text = 3;
                        _text.toString();
                      });
                    },
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  CustomElevatedButton(
                    number: '+',
                    color: 0xFFFEB139,
                    onAction: () {
                      setState(() {
                        _old = 0;
                        _old = _text;
                        _operation = '+';
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 30,bottom: 10),
              child: Row(
                children: [
                  CustomElevatedButton(
                    number: '0',
                    color: 0xFF808080,
                    onAction: () {
                      setState(() {
                        _text = 0;
                        _text.toString();
                      });
                    },
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  CustomElevatedButton(
                    number: 'c',
                    color: 0xFFFEB139,
                    onAction: () {
                      setState(() {
                        _old = 0;
                        _text = 0;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  CustomElevatedButton(
                    number: '=',
                    color: 0xFFFEB139,
                    onAction: () {
                      setState(() {
                        if (_operation == '+') {
                          _text += _old;
                        } else if (_operation == '-') {
                          _text = _old - _text;
                        } else if (_operation == '*') {
                          _text *= _old;
                        } else if (_operation == '/') {
                          if (_text == 0) {
                            _text = 'Cannot divide by zero';
                          } else {
                            _text = _old / _text;
                          }
                        }
                      });
                    },
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  CustomElevatedButton(
                    number: '-',
                    color: 0xFFFEB139,
                    onAction: () {
                      setState(() {
                        _old = 0;
                        _old = _text;
                        _operation = '-';
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
