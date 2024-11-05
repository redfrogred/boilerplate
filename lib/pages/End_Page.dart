// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//  classes
import '../providers/Count.dart';

class End_Page extends StatelessWidget {
  const End_Page({super.key});

  // (this page) variables
  final String filename = 'End_Page.dart';  

  // (this page) methods
  void _buildTriggered() {
  }  

 @override
  Widget build(BuildContext context) {
    
    _buildTriggered();
    
    return WillPopScope(
      onWillPop: () async {
        return true;  //  this allows the back button to work (if true)
      },  
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            title: Text(filename),
            centerTitle: true,
          ),
          body: Container(
            width: double.infinity,
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children : 
                [ 
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,0,15),
                    child: Text( 
                      '"${ context.read<Count>().show_counter_value }"',
                      style: const TextStyle( fontSize: 48)
                    ),
                  ),
                  ElevatedButton(
                    child: const Text( '<< Start_Page' ),
                    onPressed: () {
                      //Utils.log( filename, 'pop()!');
                      Navigator.of(context).pop();         
                      return;
                    },
                  ),                  
                ],
            ),  
          ),
        ),
      ),
    );
  }
}