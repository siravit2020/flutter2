import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter2/models/Photo.dart';

class PhotoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PhotoState();
  }
}

class _PhotoState extends State<PhotoPage> {
  List<String> list = ['xxx', 'yyy', 'zzz'];
  List<Photo> p;
  var user = {};

  @override
  Widget build(BuildContext context) {
    List<String> args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        appBar: AppBar(
          title: Text('Photo show'),
        ),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  child: Text("LoadData"),
                  onPressed: () {
                    Future<String> photoJson =
                        rootBundle.loadString('json/photos.json');
                    photoJson.then((value) {
                      p = photoFromJson(value);
                      print(p.length);
                    });
                  },
                ),
                RaisedButton(
                  child: Text("ShowData"),
                  onPressed: () {
                    setState(() {});
                  },
                ),
              ],
            ),
             (p != null) ? Column(
                children: p.getRange(0, 100).map((photo) {
              return Card(
                child: ListTile(
                  title: Text(photo.title),
                  subtitle: Text(photo.thumbnailUrl),
                  leading: Image.network(photo.thumbnailUrl,width: 50,),
                ),
              );
            }).toList())
            : Container()
          ],
        ));
  }
}
