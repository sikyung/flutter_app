import 'package:flutter/material.dart';
import 'package:flutterapp/constants/materal_white_color.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: white,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: [
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    '남구로 초등학교',
                    style: new TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Text(
                  '보행자 2,456명, 무단횡단 20명',
                  style: new TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          new Icon(
            Icons.directions_run,
            color: Colors.green[500],
          ),
          new Text('양호',
            style: TextStyle(
              fontStyle: FontStyle.italic,
            ),)
        ],
      ),
    );

    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;

      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Icon(icon, color: color),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.call, 'CALL'),
          buildButtonColumn(Icons.near_me, 'ROUTE'),
          buildButtonColumn(Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textSection = new Container(
      padding: const EdgeInsets.all(20.0),
      child: new Text(
        '',
        softWrap: true,
        style: TextStyle(
          fontStyle: FontStyle.italic,
        ),
      ),
    );

    return new Scaffold(
      appBar: new AppBar(
        title: Image.asset('/Users/sikyungkim/Tium/src/flutter/examples/flutter_app/assets/image/safewalk.png',
        height: 42,),
        actions: <Widget>[
          IconButton(
              onPressed: null,
              icon: ImageIcon(
                AssetImage('/Users/sikyungkim/Tium/src/flutter/examples/flutter_app/assets/icons/profile.png'),
                color: Colors.black,
              )),
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.more_horiz,
                color: Colors.black87,
              )),
          //ImageIcon(AssetImage('assets/direct_message.png')),
        ],
      ),
      body: new ListView(
        children: [
          new Image.asset(
            '/Users/sikyungkim/Tium/src/flutter/examples/flutter_app/assets/image/p1.png',
            width: 0.0,
            height: 250.0,
            fit: BoxFit.cover,
          ),
          titleSection,
          //buttonSection,
          //textSection,
       Row(
         mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 170,
            height: 100,
            //color: Colors.grey[300],
            padding: const EdgeInsets.all(8.0),
            //margin: const EdgeInsets.all(25.0),
            child: IconButton(
              icon: Icon(
                Icons.airplay,
                color:Colors.black,)
            ),
          ),
          Container(
            width: 170,
            height: 100,
            color: Colors.grey[200],
            child: IconButton(
              icon: Icon(
                Icons.apps,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 170,
                height: 100,
                color: Colors.grey[200],
                child: IconButton(
                    icon: Icon(
                      Icons.traffic,
                      color:Colors.black,)
                ),
              ),
              Container(
                width: 170,
                height: 100,
                child: IconButton(
                  icon: Icon(
                    Icons.call,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),

    );
  }
}
