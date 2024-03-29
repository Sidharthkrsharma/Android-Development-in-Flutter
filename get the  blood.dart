import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class Second extends StatelessWidget { 
  const Second(this.email); 
  final String email; 

  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      backgroundColor: Colors.red, 
      body: SafeArea( 
        child: Padding( 
          padding: EdgeInsets.symmetric(horizontal: 40), 
          child: Container( 
            color: Colors.red, 
            height: double.infinity, 
            width: double.infinity, 
            child: Column(children: [ 
              SizedBox(height: 80), 
              const Text( 
                'Your blood can save lives', 
                style: TextStyle(fontSize: 25, color: Colors.white), 
              ), 
              Text("Logged in as $email", 
                  style: TextStyle(fontSize: 14, color: Colors.white)), 
              SizedBox(height: 200), 
              TextButton( 
                onPressed: () {}, 
                style: ButtonStyle( 
                    backgroundColor: 
                        MaterialStateProperty.all<Color>(Colors.white), 
                    padding: MaterialStateProperty.all<EdgeInsets>( 
                        EdgeInsets.symmetric(horizontal: 19, vertical: 9))), 
                child: const Text('Donate Blood', 
                    style: TextStyle(fontSize: 18, color: Colors.black)), 
              ), 
              SizedBox(height: 30), 
              TextButton( 
                onPressed: () {}, 
                style: ButtonStyle( 
                    backgroundColor: 
                        MaterialStateProperty.all<Color>(Colors.white), 
                    padding: MaterialStateProperty.all<EdgeInsets>( 
                        EdgeInsets.symmetric(horizontal: 21, vertical: 9))), 
                child: const Text('   Get Blood   ', 
                    style: TextStyle(fontSize: 20, color: Colors.grey)), 
              ), 
            ]), 
          ), 
        ), 
      ), 
    ); 
  } 
}
