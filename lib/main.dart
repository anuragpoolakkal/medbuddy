import 'package:flutter/material.dart';
import 'package:medbuddy/src/global_bloc.dart';
import 'package:medbuddy/src/ui/splash_screen/splash.dart';
import 'package:medbuddy/src/ui/tabpage/tabs.dart';
import 'package:provider/provider.dart';

void main() {
runApp(MyApp());
}

class medbuddy extends StatefulWidget {
    @override
    _medbuddy createstate() => _medbuddy();
}

class MyApp extends StatefulWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp (
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
        primaryswatch: Colors.blue,
        ),
        home:Splash(),
        );
    }
}
class _medbuddy extends State<medbuddy>{
GlobalBloc globalbloc;
 void initState(){
     globalbloc = GlobalBloc();
     super.initState();
 }
 @override
 Widget build(BuildContext context){
     return Provider<GlobalBloc>.value(
         value: globalbloc,
         child: MaterialApp(
             theme: ThemeData(
                 primarySwatch: Colors.green,
                 brightness: Brightness.light,
             );
             home: tab(),          
         ),
    );
 }
} 