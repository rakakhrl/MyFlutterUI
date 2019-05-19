import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<BottomNavigationBarItem> _navItem = [
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      title: Text('EXPLORE'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite_border),
      title: Text('SAVED'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.train),
      title: Text('TRIPS'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.chat_bubble_outline),
      title: Text('INBOX'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person_outline),
      title: Text('PROFILE'),
    ),
  ];

  static const List<Widget> _widgetScreen = <Widget>[
    ExplorePage(),
    Text('b'),
    Text('c'),
    Text('d'),
    Text('e'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: _widgetScreen.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _navItem,
        currentIndex: _selectedIndex,
        iconSize: 32.0,
        selectedFontSize: 14.0,
        selectedItemColor: Color.fromRGBO(255, 90, 95, 1),
        unselectedItemColor: Color.fromRGBO(72, 72, 72, 1),
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {},
      ),
    );
  }
}

class ExplorePage extends StatelessWidget {
  const ExplorePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 40.0),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            child: RaisedButton(
              elevation: 5,
              padding: EdgeInsets.all(14.0),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0)),
              child: Row(
                children: <Widget>[
                  Icon(Icons.search, color: Colors.grey),
                  SizedBox(width: 15.0),
                  Text(
                    'Try "Bangkok"',
                    style: Theme.of(context).textTheme.subhead.copyWith(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            child: Row(
              children: <Widget>[
                OutlineButton(
                  borderSide:
                      BorderSide(color: Color.fromRGBO(118, 118, 118, 1)),
                  highlightedBorderColor: Color.fromRGBO(118, 118, 118, 1),
                  child: Text(
                    'Dates',
                    style: Theme.of(context).textTheme.subhead.copyWith(
                          color: Color.fromRGBO(118, 118, 118, 1),
                        ),
                  ),
                  onPressed: () {},
                ),
                SizedBox(width: 10.0),
                OutlineButton(
                  borderSide:
                      BorderSide(color: Color.fromRGBO(118, 118, 118, 1)),
                  highlightedBorderColor: Color.fromRGBO(118, 118, 118, 1),
                  child: Text(
                    'Guests',
                    style: Theme.of(context).textTheme.subhead.copyWith(
                          color: Color.fromRGBO(118, 118, 118, 1),
                        ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SizedBox(height: 50.0),
          BigText(text: 'What can we help you   find, Raka?'),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Row(
              children: <Widget>[
                CategoryCard(
                  imageUrl: 'assets/images/couch-1835923_640.jpg',
                  text: 'Homes',
                ),
                SizedBox(width: 10.0),
                CategoryCard(
                  imageUrl: 'assets/images/girl-1718427_640.jpg',
                  text: 'Experiences',
                )
              ],
            ),
          ),
          SizedBox(height: 50.0),
          BigText(text: 'Finish booking your trip'),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Row(
              children: <Widget>[
                InfoBox(
                  imageUrl: 'assets/images/couch-1835923_640.jpg',
                  stayParam: 'MAY 20 - NOV 20 - 1 GUEST',
                  placeName: 'Serpong Green View Apartmen',
                  pricePerNight: '\$10',
                ),
                SizedBox(width: 10.0),
                InfoBox(
                  imageUrl: 'assets/images/couch-1835923_640.jpg',
                  stayParam: 'MAY 20 - NOV 20 - 1 GUEST',
                  placeName: 'Margonda Residence apartment for Rent',
                  pricePerNight: '\$12',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InfoBox extends StatelessWidget {
  final String imageUrl;
  final String stayParam;
  final String placeName;
  final String pricePerNight;

  const InfoBox({
    Key key,
    this.imageUrl,
    this.placeName,
    this.pricePerNight,
    this.stayParam,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 150.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(12.0),
            height: 90.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage(imageUrl), fit: BoxFit.cover),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              stayParam,
              style: Theme.of(context).textTheme.body2.copyWith(
                    fontSize: 10.0,
                    fontWeight: FontWeight.w800,
                    color: Colors.green[900],
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0, bottom: 6.0),
            child: Text(
              placeName,
              style: Theme.of(context).textTheme.title.copyWith(
                    fontWeight: FontWeight.w900,
                    fontSize: 16.0,
                  ),
            ),
          ),
          Text('$pricePerNight per night'),
        ],
      ),
    );
  }
}

class BigText extends StatelessWidget {
  final String text;

  const BigText({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24.0),
      child: Text(
        text,
        style: TextStyle(
          color: Color.fromRGBO(72, 72, 72, 1),
          fontWeight: FontWeight.bold,
          fontSize: 26.0,
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String imageUrl;
  final String text;

  const CategoryCard({Key key, this.imageUrl, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        height: 150.0,
        width: 150.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 75.0,
              width: double.infinity,
              child: Image.asset(
                imageUrl,
                fit: BoxFit.fitWidth,
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 14.0, top: 14.0),
                  child: Text(
                    text,
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
