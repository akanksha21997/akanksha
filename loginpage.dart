import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(new MaterialApp(
    home: new LoginPage1(),
    
  )
  );
  
}

class LoginPage1 extends StatefulWidget{
  _LoginPage1 createState()=> _LoginPage1();
}

class _LoginPage1 extends State<LoginPage1>{
bool check(){
  bool userExist;
  if(userName=='abc@gmail.com'&& password=='xyz'){
    userExist=true;
  }else{
    userExist=false;
  }
    return userExist;
}

String userName,password;
@override
Widget build(BuildContext context){
  return Scaffold(

appBar: AppBar(

  title: Text('Login page')
),
body: Center(

  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,

  children: <Widget>[
    TextField(
      onChanged: (value){
        userName= value;

      }, decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'userName',
  ),
    ),
    SizedBox(
      height: 20.0,
    ),
    TextField(
      onChanged: (value){
        password= value;

      }, decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'password',
    ),
  
    ),
    SizedBox(
      height: 20.0,
    ),

    RaisedButton (
      onPressed: () 
      {
          bool userExist = check();
          if(userExist==true)
          {
            Navigator.of (context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => SecondPage(),
              )
            );
            
          }else{
                showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("oops!"),
          content: new Text("login failed"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
          }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('login'),
          Icon(Icons.arrow_forward)

        ],
      ),
    )
    
  ],
  ),
),

  );
  

}
}
class SecondPage extends StatefulWidget{
  _SecondPage createState()=> _SecondPage();
}

class _SecondPage extends State<SecondPage>{
bool check(){
  bool userExist;
  if(userName=='abc@gmail.com'&& password=='xyz'){
    userExist=true;
  }else{
    userExist=false;
  }
    return userExist;
}

String userName,password;
@override
Widget build(BuildContext context){
  return Scaffold(

appBar: AppBar(

  title: Text('second page')
),
body: Center(
  

  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
       Text ('loggedin successfully') ]
  
  )
    )
    );
}
}
