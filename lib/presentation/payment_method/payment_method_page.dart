import 'package:flutter/material.dart';

enum SingingCharacter { lafayette, jefferson }

// ...

SingingCharacter _character = SingingCharacter.lafayette;

class PaymentMethodPage extends StatefulWidget {
  @override
  _PaymentMethodPageState createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Metodo de Pago"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 14, top: 20),
        child: Column(
          children: <Widget>[
            ListTile(
//            title: Text('Thomas Jefferson'),
              leading: Text(
                'Thomas Jefferson',
                style: Theme.of(context).textTheme.headline5,
              ),

              trailing: Radio(
                value: SingingCharacter.jefferson,
                groupValue: _character,
                onChanged: (SingingCharacter value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical:6),
              child: Divider(
                thickness: 1,
                height: 20,
              ),
            ),
            ListTile(
              leading: Text(
                'Lafayette',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              trailing: Radio(
                value: SingingCharacter.lafayette,
                groupValue: _character,
                onChanged: (SingingCharacter value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              child: Divider(
                thickness: 1,
                height: 20,
              ),
            ),
            ListTile(
              leading: Text(
                'Lafayette',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              trailing: Radio(
                value: SingingCharacter.lafayette,
                groupValue: _character,
                onChanged: (SingingCharacter value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
                height: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
