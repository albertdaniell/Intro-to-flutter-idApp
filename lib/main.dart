import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'My Ninja ID App',
  home: Home(),
  debugShowCheckedModeBanner: false,
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int ninjaLevel =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
    appBar: AppBar(
    title: Text('Ninja ID Card'),
      backgroundColor: Colors.black54,
      centerTitle: true,

    ),
    floatingActionButton: FloatingActionButton(onPressed:()=>{
      setState(()=>{
        ninjaLevel+=1
    })
    },
    child: Icon(Icons.add),
      backgroundColor: Colors.grey[800],
    ),
    body: Padding(
      padding:EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/image1.jpg'),
              radius: 40.0,
            ),
          ),
            Divider(height: 60.0,color: Colors.grey[800],),

            Text(
                'NAME', style: TextStyle(
                color: Colors.grey,fontSize: 15.0,letterSpacing: 2.0),),
            SizedBox(height: 10.0,),
            Text(
              'NAME', style: TextStyle(
                color: Colors.amberAccent,fontSize: 25.0,letterSpacing: 2.0),),
            SizedBox(height: 30.0,),
            Text(
              'NINJA LEVEL', style: TextStyle(
                color: Colors.grey,fontSize: 15.0,letterSpacing: 2.0),),
            SizedBox(height: 10.0,),
            Text(
              '$ninjaLevel', style: TextStyle(
                color: Colors.amberAccent,fontSize: 25.0,letterSpacing: 2.0),),
            SizedBox(height: 30.0,),
          Row(
            children: <Widget>[
              Icon(
                Icons.email,
                color: Colors.grey[500],

              ),
              SizedBox(width: 10.0,),
              Text('albertagoya@gmail.com',
                style: TextStyle(color: Colors.grey[500],letterSpacing: 1.0),

              )
            ],
          )




        ],
      ),



    ),
    );
  }
}



