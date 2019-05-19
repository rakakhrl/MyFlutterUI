import 'package:flutter/material.dart';

class MainOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * .16,
        right: 10.0,
        left: 10.0,
      ),
      child: Container(
        height: 90.0,
        width: MediaQuery.of(context).size.width,
        child: Card(
          color: Colors.white,
          elevation: 4.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.local_atm),
                    iconSize: 36.0,
                    color: Colors.deepPurple,
                    onPressed: () {},
                  ),
                  Text(
                    'Transfer',
                    style: TextStyle(color: Colors.deepPurple),
                  )
                ],
              ),
              VerticalDivider(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.camera),
                    iconSize: 36.0,
                    color: Colors.deepPurple,
                    onPressed: () {},
                  ),
                  Text(
                    'Transfer',
                    style: TextStyle(color: Colors.deepPurple),
                  )
                ],
              ),
              VerticalDivider(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.account_circle),
                    iconSize: 36.0,
                    color: Colors.deepPurple,
                    onPressed: () {},
                  ),
                  Text(
                    'Transfer',
                    style: TextStyle(color: Colors.deepPurple),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
