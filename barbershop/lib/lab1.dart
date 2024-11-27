import 'package:flutter/material.dart';

void main() {
  runApp(CurrencyConverterApp());
}

class CurrencyConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Currency Converter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CurrencyConverterScreen(),
    );
  }
}

class CurrencyConverterScreen extends StatefulWidget {
  @override
  _CurrencyConverterScreenState createState() =>
      _CurrencyConverterScreenState();
}

class _CurrencyConverterScreenState extends State<CurrencyConverterScreen> {
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _convertedController = TextEditingController();
  double exchangeRate = 17.65;

  void _convertCurrency() {
    double amount = double.tryParse(_amountController.text) ?? 0;
    double convertedAmount = amount / exchangeRate;
    _convertedController.text = convertedAmount.toStringAsFixed(2);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Currency Converter',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue[900],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          'assets/Moldova.png',
                          width: 40,
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        'MDL',
                        style: TextStyle(fontSize: 18),
                      ),
                      Spacer(),
                      Expanded(
                        child: TextField(
                          controller: _amountController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: '1000.00',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  // IconButton in a customized elliptical Container
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF26278D), // Background color for ellipse
                    ),
                    child: IconButton(
                      icon: Icon(Icons.swap_vert),
                      iconSize: 40,
                      color: Colors.white, // Color for arrows inside ellipse
                      onPressed: _convertCurrency,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: <Widget>[
                      ClipOval(
                        child: Image.asset(
                          'assets/USA.png',
                          width: 40,
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        'USD',
                        style: TextStyle(fontSize: 18),
                      ),
                      Spacer(),
                      Expanded(
                        child: TextField(
                          controller: _convertedController,
                          readOnly: true,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: '736.70',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            Text(
              'Indicative Exchange Rate',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Text(
                  '1 USD = ',
                  style: TextStyle(fontSize: 16),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    exchangeRate.toStringAsFixed(2),
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Text(
                  ' MDL',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
