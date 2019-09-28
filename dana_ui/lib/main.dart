import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        titleSpacing: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: Text(
          'Akun Saya',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Stack(
        children: <Widget>[
          ProfileContainer(),
          Positioned(
            top: 40.0,
            child: InfoCard(),
          ),
        ],
      ),
    );
  }
}

class ProfileContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey,
          ),
          SizedBox(
            height: 60.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(
              24.0,
              24.0,
              24.0,
              12.0,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text('DANA'),
                    Text('+62*******6559'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text('SALDO'),
                    Text('Rp4.000'),
                  ],
                ),
                SizedBox(
                  height: 45.0,
                  width: double.infinity,
                  child: FlatButton(
                    onPressed: () {},
                    child: Text('TOP UP'),
                    textColor: Colors.white,
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.fromLTRB(
              24.0,
              10.0,
              24.0,
              24.0,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Bagikan & dapatkan poin!'),
                    Row(
                      children: <Widget>[
                        Text('U3XXLN'),
                        Icon(Icons.chevron_right),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.black12,
          ),
        ],
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24.0),
      child: Container(
        height: 120.0,
        width: MediaQuery.of(context).size.width - 48.0,
        child: Card(
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
