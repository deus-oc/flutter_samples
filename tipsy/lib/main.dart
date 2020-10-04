import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tipsy',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _textEditingController;
  List<bool> _isSelected = [false, true, false];
  List<double> _tipPercentageList = [0.10, 0.15, 0.20];

  double _bill;
  double _tipAmount;
  double _totalAmount;
  double _tipPercentage;

  @override
  void initState() {
    super.initState();
    _bill = 0.0;
    _tipAmount = 0.0;
    _totalAmount = 0.0;
    _tipPercentage = _tipPercentageList[1];

    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tipsy'),
      ),
      body: Container(
        color: Colors.tealAccent[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Text(
                    'Enter bill total',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 30, right: 20),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.attach_money,
                          size: 50,
                        ),
                        contentPadding: EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                        hintText: 'eg. 123.56',
                      ),
                      onChanged: (newAmount) => setState(() {
                        _bill = double.parse(newAmount);
                        _tipAmount = _bill * _tipPercentage;
                        _totalAmount = (_bill + _tipAmount);
                      }),
                      controller: _textEditingController,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text(
                        'Select tip',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                    ToggleButtons(
                      fillColor: Colors.teal[700],
                      selectedColor: Colors.white,
                      textStyle: TextStyle(
                        fontSize: 25,
                      ),
                      constraints: BoxConstraints(
                        minWidth: 100,
                        minHeight: 40,
                      ),
                      children: <Widget>[
                        Text(
                          '10%',
                        ),
                        Text(
                          '15%',
                        ),
                        Text(
                          '20%',
                        ),
                      ],
                      isSelected: _isSelected,
                      onPressed: (int index) {
                        setState(() {
                          _isSelected = [false, false, false];
                          _isSelected[index] = !_isSelected[index];
                          _tipPercentage = _tipPercentageList[index];
                          _tipAmount = _bill * _tipPercentage;
                          _totalAmount = (_bill + _tipAmount);
                        });
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 20),
                      child: Text(
                        'Tip Amount',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Text(
                      _tipAmount.toStringAsFixed(2),
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal[700],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 20),
                      child: Text(
                        'Total Amount',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Text(
                      _totalAmount.toStringAsFixed(2),
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal[700],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
