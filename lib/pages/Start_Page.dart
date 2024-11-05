// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//  pages
import '../providers/Count.dart';

class Start_Page extends StatefulWidget {
  const Start_Page({super.key});

  @override
  State<Start_Page> createState() => _Start_PageState();
}

class _Start_PageState extends State<Start_Page> {
  // (this page) variables
  final String filename = 'Start_Page.dart';

  // (this page) init and dispose
  @override
  void initState() {
    super.initState();
    // Utils.log( filename, 'initState()' );
    WidgetsBinding.instance
        .addPostFrameCallback((_) => _addPostFrameCallbackTriggered(context));

    //  setupApp();
  }

  @override
  void dispose() {
    // Utils.log( filename, 'dispose()');
    super.dispose();
  }

  // (this page) methods
  void _buildTriggered() {
    // Utils.log( filename, '_buildTriggered()');
  }

  // addPostFrameCallback" is called after build completed
  void _addPostFrameCallbackTriggered(context) {
    // Utils.log( filename, '_addPostFrameCallbackTriggered() (build completed)');
  }

  @override
  Widget build(BuildContext context) {
    _buildTriggered();

    return PopScope(
      canPop: false, // prevent back
      onPopInvoked: (_) async {
        print('tried to use back but denied!');
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            title: Text(filename),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: Container(
            width: double.infinity,
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0,20,0,20),
                  child: Text( context.watch<Count>().show_counter_value,
                      style: const TextStyle( fontSize: 48)
                    ),
                ),
                ElevatedButton(
                  child: const Text('End_Page >>'),
                  onPressed: () {
                    Navigator.of(context).pushNamed('End_Page');
                    return;
                  },
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.read<Count>().increment();
            },
            child: const Icon(Icons.add, size: 32),
          ),
        ),
      ),
    );
  }
}
