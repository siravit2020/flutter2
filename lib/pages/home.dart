import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter2/pages/photo.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  String message = "Siravit pichphol";
  var _usernameController = TextEditingController();
  var _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Siravit"),
        // ),
        body: Container(
      child: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            Image.asset(
              'images/star.png',
              height: 200,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 50),
                child: TextField(
                  decoration: InputDecoration(labelText: 'Username'),
                  controller: _usernameController,
                )),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, bottom: 10),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
                controller: _passwordController,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton(
                  textColor: Color(0xFF6200EE),
                  onPressed: () {
                    message = _usernameController.text;
                    setState(() {

                    });
                    Navigator.pushNamed(context,'/photo-page',arguments: [_usernameController.text, _passwordController.text]);
                  },
                  child: Text("Login"),
                ),
                FlatButton(
                  textColor: Color(0xFF6200EE),
                  onPressed: () {
                    setState(() {
                      
                    });
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => PhotoPage(_usernameController.text)));
                  },
                  child: Text("Register"),
                )
              ],
            ),
            Center(child: Text("2019 \u00a9 Siravit pichphol")),
            Center(child: (message.isEmpty) ? Container() : Text(message))
          ],
        ),
      ),
    ));
  }
}
