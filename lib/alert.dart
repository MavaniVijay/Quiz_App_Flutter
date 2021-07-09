import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.lightGreen,
          child: Column(
            children: [
              FlatButton(
                color: Colors.white,
                onPressed: () {
                  return Alert(
                          context: context,
                          title: "RFLUTTER",
                          desc: "Flutter is awesome.")
                      .show();
                },
                child: Text(
                  'OTHER',
                ),
              ),
              FlatButton(
                color: Colors.white,
                onPressed: () {
                  return Alert(
                      context: context,
                      title: "LOGIN",
                      content: Column(
                        children: <Widget>[
                          TextField(
                            decoration: InputDecoration(
                              icon: Icon(Icons.account_circle),
                              labelText: 'Username',
                            ),
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              icon: Icon(Icons.lock),
                              labelText: 'Password',
                            ),
                          ),
                        ],
                      ),
                      buttons: [
                        DialogButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text(
                            "LOGIN",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )
                      ]).show();
                },
                child: Text(
                  'LOGIN',
                ),
              ),
              FlatButton(
                color: Colors.white,
                onPressed: () {
                  Alert(
                    context: context,
                    style: AlertStyle(
                      animationType: AnimationType.fromTop,
                      isCloseButton: false,
                      isOverlayTapDismiss: false,
                      descStyle: TextStyle(fontWeight: FontWeight.bold),
                      descTextAlign: TextAlign.start,
                      animationDuration: Duration(milliseconds: 400),
                      alertBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                        side: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      titleStyle: TextStyle(
                        color: Colors.red,
                      ),
                      alertAlignment: Alignment.topCenter,
                    ),
                    type: AlertType.info,
                    title: "RFLUTTER ALERT",
                    desc: "Flutter is more awesome with RFlutter Alert.",
                    buttons: [
                      DialogButton(
                        child: Text(
                          "COOL",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () => Navigator.pop(context),
                        color: Color.fromRGBO(0, 179, 134, 1.0),
                        radius: BorderRadius.circular(0.0),
                      ),
                    ],
                  ).show();
                },
                child: Text(
                  'CUSTOM',
                ),
              ),
              FlatButton(
                color: Colors.white,
                onPressed: () {
                  Alert(
                    context: context,
                    type: AlertType.warning,
                    title: "RFLUTTER ALERT",
                    desc: "Flutter is more awesome with RFlutter Alert.",
                    buttons: [
                      DialogButton(
                        child: Text(
                          "FLAT",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () => Navigator.pop(context),
                        color: Color.fromRGBO(0, 179, 134, 1.0),
                      ),
                      DialogButton(
                        child: Text(
                          "GRADIENT",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () => Navigator.pop(context),
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(116, 116, 191, 1.0),
                          Color.fromRGBO(52, 138, 199, 1.0)
                        ]),
                      )
                    ],
                  ).show();
                },
                child: Text(
                  'FLAT',
                ),
              ),
              FlatButton(
                color: Colors.white,
                onPressed: () {
                  Alert(
                    context: context,
                    type: AlertType.error,
                    title: "RFLUTTER ALERT",
                    desc: "Flutter is more awesome with RFlutter Alert.",
                    buttons: [
                      DialogButton(
                        child: Text(
                          "COOL",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () => Navigator.pop(context),
                        width: 120,
                      )
                    ],
                  ).show();
                },
                child: Text(
                  'FLUTTER',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
