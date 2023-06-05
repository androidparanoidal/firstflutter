import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'coin_data.dart';
import 'dart:io' show Platform;

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String? selectedCurrency = 'AUD';

  // Android picker
  DropdownButton<String> androidDropdownButton() {
    List<DropdownMenuItem<String>> dropdownItems = [];
    for (String currency in currenciesList) {
      var newItem = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );
      dropdownItems.add(newItem);
    }
    return DropdownButton<String>(
      value: selectedCurrency,
      items: dropdownItems,
      onChanged: (value) {
        //print(value);
        setState(() {
          selectedCurrency = value;
          getData();
        });
      },
    );
  }

  // iOS picker
  CupertinoPicker iOSPicker() {
    List<Text> pickerItems = [];
    for (String currency in currenciesList) {
      pickerItems.add(Text(currency));
    }
    return CupertinoPicker(
      backgroundColor: Colors.lightBlue,
      itemExtent: 32.0,
      onSelectedItemChanged: (selectedIndex) {
        //print(selectedIndex);
        setState(() {
          selectedCurrency = currenciesList[selectedIndex];
          getData();
        });
      },
      children: pickerItems,
    );
  }

  Widget getPicker() {
    bool isIOS = Theme.of(context).platform == TargetPlatform.iOS;
    if (isIOS) {
      return iOSPicker();
    } else {
      return androidDropdownButton();
    }
  }

  Map<String, String> cryptoValuesMap = {};
  bool loading = false;

  void getData() async {
    loading = true;
    try {
      var data = await CoinData().getCoinData(selectedCurrency!);
      loading = false;
      setState(() {
        cryptoValuesMap = data;
      });
    } catch (exeption) {
      print(exeption);
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  //TODO: For bonus points, create a method that loops through the cryptoList and generates a CryptoCard for each.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coin Ticker'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CryptoCard(
                cryptoName: 'BTC',
                cryptoValue: loading ? '?' : cryptoValuesMap['BTC'],
                selectedCurrency: selectedCurrency,
              ),
              CryptoCard(
                cryptoName: 'ETH',
                cryptoValue: loading ? '?' : cryptoValuesMap['ETH'],
                selectedCurrency: selectedCurrency,
              ),
              CryptoCard(
                cryptoName: 'LTC',
                cryptoValue: loading ? '?' : cryptoValuesMap['LTC'],
                selectedCurrency: selectedCurrency,
              ),
            ],
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: getPicker(), // or use this for checking iOS version
            //Platform.isAndroid ? iOSPicker() : androidDropdownButton(),
          ),
        ],
      ),
    );
  }
}

class CryptoCard extends StatelessWidget {
  CryptoCard({this.cryptoName, this.cryptoValue, this.selectedCurrency});
  final String? cryptoName;
  final String? cryptoValue;
  final String? selectedCurrency;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
      child: Card(
        color: Colors.lightBlueAccent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
          child: Text(
            '1 $cryptoName = $cryptoValue $selectedCurrency',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
