import 'package:flutter/material.dart';

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          height: 150.0,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            border: Border(
              top: BorderSide(color: Colors.white24),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "OVO CASH",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          'Rp',
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.orange,
                          ),
                        ),
                        Text(
                          '252',
                          style: TextStyle(
                            fontSize: 24.0,
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.refresh),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                        FlatButton(
                          child: Text(
                            'TOP UP',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          color: Colors.blue,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                RichText(
                  text: TextSpan(
                    text: 'OVO POINTS ',
                    style: TextStyle(fontSize: 12.0),
                    children: <TextSpan>[
                      TextSpan(
                        text: '1.667',
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.orange,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
