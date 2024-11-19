import 'package:flutter/material.dart';

class AllWidget extends StatelessWidget{
  const AllWidget({super.key});
  @override
  Widget build(BuildContext context) {

final buttonStyle= ElevatedButton.styleFrom(
    backgroundColor: Colors.blue, // Background color
    foregroundColor: Colors.white, // Text color
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15), // Button size
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)), // No rounding for sharp edges
    ),
  );
    return SafeArea(child: Scaffold(
      backgroundColor:Colors.amber ,
        body: Center(
          child:  Column(
            mainAxisSize: MainAxisSize.max,
            children: [
                Padding(padding: const EdgeInsets.only(top:20,bottom:20),
                  child: ElevatedButton(
                  style: buttonStyle,
                                onPressed: (){},
                                child: const Text('Disabled'),
                              ),
                ),
            ElevatedButton(
              onPressed: () {} ,
              child: const Text('Enabled'),
            ),
            Padding(
            padding: const EdgeInsets.only(top: 20),
            child: TextButton(style: buttonStyle, child: const Text("TextButton"),onPressed: (){},))
            ]
          ),
        ),
    ),
    );
  }
}