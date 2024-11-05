//  packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/Count.dart';

//  pages
import './pages/Start_Page.dart';
import './pages/End_Page.dart';


void main() {
  runApp( MultiProvider (
  providers: [ ChangeNotifierProvider(create: (_) => Count()),],
  child: MyApp()) );
}

class MyApp extends StatelessWidget {
  const MyApp({ super.key });

  // (this page) variables
  final String filename = 'main.dart';

  // (this page) methods
  void _buildTriggered() {
    //  Utils.log( filename, '== "${ Config.app_name }" ver ${ Config.app_version } ==');
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    _buildTriggered();

    return MaterialApp(
      debugShowCheckedModeBanner: true,
      initialRoute: 'Start_Page',
      
      routes: {
        'Start_Page': (context) => const Start_Page(),
        'End_Page': (context) => const End_Page(),
      },
    );
  }
}