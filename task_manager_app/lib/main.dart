import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPageIndex = 0;

  void _onNavigationTapped(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _showBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(42.0, 24.0, 42.0, 24.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Create New Wiki",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(hintText: "Type a Title"),
                    cursorColor: Colors.teal,
                  ),
                  SizedBox(height: 20.0),
                  ButtonTheme(
                    minWidth: double.infinity,
                    height: 50.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                    child: FlatButton.icon(
                      color: Colors.teal,
                      label: Text(
                        "Create New Wiki",
                        style: TextStyle(color: Colors.white),
                      ),
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(height: 10.0),
                  ButtonTheme(
                    minWidth: double.infinity,
                    height: 50.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                    child: OutlineButton.icon(
                      borderSide: BorderSide(color: Colors.teal, width: 1.5),
                      label: Text(
                        "Create New Folder",
                        style: TextStyle(color: Colors.teal),
                      ),
                      icon: Icon(
                        Icons.folder,
                        color: Colors.teal,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    "* Only visible to you, if you want you can share with others later.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black87,
          ),
          iconSize: 32.0,
          onPressed: () {},
        ),
        actions: <Widget>[
          CircleAvatar(
            radius: 18.0,
          ),
          SizedBox(
            width: 16.0,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showBottomSheet,
        backgroundColor: Colors.teal,
        child: Icon(Icons.add, size: 32.0),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        onTap: _onNavigationTapped,
        selectedItemColor: Colors.deepOrange,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.grey[400],
        iconSize: 32.0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('')),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble), title: Text('')),
        ],
      ),
      body: GlowingOverscrollIndicator(
        axisDirection: AxisDirection.down,
        color: Colors.teal,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Wiki Lists',
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 32.0,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 16.0),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        height: 90.0,
                        width: 160.0,
                        child: Card(
                          color: Colors.deepOrange,
                          elevation: 3,
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  right: 0,
                                  child: Icon(
                                    Icons.book,
                                    size: 64.0,
                                    color: Colors.white12,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Icon(
                                        Icons.book,
                                        color: Colors.grey[300],
                                      ),
                                      SizedBox(height: 15.0),
                                      Text(
                                        "All Wikis",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey[300],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 90.0,
                        width: 160.0,
                        child: Card(
                          color: Colors.blue,
                          elevation: 3,
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  right: 0,
                                  child: Icon(
                                    Icons.lock,
                                    size: 64.0,
                                    color: Colors.white12,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Icon(
                                        Icons.lock,
                                        color: Colors.grey[300],
                                      ),
                                      SizedBox(height: 15.0),
                                      Text(
                                        "My private notes",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey[300],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        height: 90.0,
                        width: 160.0,
                        child: Card(
                          color: Colors.indigo,
                          elevation: 3,
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  right: 0,
                                  child: Icon(
                                    Icons.bookmark,
                                    size: 64.0,
                                    color: Colors.white12,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Icon(
                                        Icons.bookmark,
                                        color: Colors.grey[300],
                                      ),
                                      SizedBox(height: 15.0),
                                      Text(
                                        "Bookmarked wikis",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey[300],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 90.0,
                        width: 160.0,
                        child: Card(
                          color: Colors.teal,
                          elevation: 3,
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  right: 0,
                                  child: Icon(
                                    Icons.web,
                                    size: 64.0,
                                    color: Colors.white12,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Icon(
                                        Icons.web,
                                        color: Colors.grey[300],
                                      ),
                                      SizedBox(height: 15.0),
                                      Text(
                                        "Templates",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey[300],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Text(
                'Recently Opened Wikies',
                style: TextStyle(
                    color: Colors.deepOrange, fontWeight: FontWeight.w500),
              ),
              Column(
                children: <Widget>[
                  ListTile(
                    onTap: () {},
                    contentPadding: EdgeInsets.all(0),
                    leading: CircleAvatar(
                      radius: 16.0,
                    ),
                    title: Text(
                      'Brand Guidline',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    contentPadding: EdgeInsets.all(0),
                    leading: CircleAvatar(
                      radius: 16.0,
                    ),
                    title: Text(
                      'Project Grail Sprint Plan..',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    contentPadding: EdgeInsets.all(0),
                    leading: CircleAvatar(
                      radius: 16.0,
                    ),
                    title: Text(
                      'Personal Wiki',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Channels / Group',
                style: TextStyle(
                    color: Colors.deepOrange, fontWeight: FontWeight.w500),
              ),
              Column(
                children: <Widget>[
                  ListTile(
                    onTap: () {},
                    contentPadding: EdgeInsets.all(0),
                    leading: Icon(Icons.check_box_outline_blank),
                    title: Text(
                      'Tixio 2.0',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.more_vert),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    contentPadding: EdgeInsets.all(0),
                    leading: Icon(Icons.check_box_outline_blank),
                    title: Text(
                      'Project Grail',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.more_vert),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    contentPadding: EdgeInsets.all(0),
                    leading: Icon(Icons.check_box_outline_blank),
                    title: Text(
                      'Fun Facts',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.more_vert),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
