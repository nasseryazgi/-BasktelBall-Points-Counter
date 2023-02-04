
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PointsCounter extends StatefulWidget {
  const PointsCounter({Key? key}) : super(key: key);

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints =0 , teamBPoints=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Basktelball Points Counter',) ,centerTitle: true,backgroundColor: Colors.orange),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text('Team A' ,style: TextStyle(fontSize: 40,),),
                       Text('$teamAPoints',style: const TextStyle(fontSize:110 ,),),
                      ElevatedButton(onPressed: (){
                        setState(() {
                          teamAPoints+=1;
                        });
                      },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ), child: const Text('Add 1 points' ,style: TextStyle(  color: Colors.black,
                          // fontWeight: FontWeight.bold,
                          fontSize: 20,),) ,) ,
                      ElevatedButton(onPressed: (){       setState(() {
                        teamAPoints+=2;
                      });},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ), child: const Text('Add 2 points' ,style: TextStyle(  color: Colors.black,
                          // fontWeight: FontWeight.bold,
                          fontSize: 20,),) ,) ,
                      ElevatedButton(onPressed: (){
                        setState(() {
                          teamAPoints+=3;
                        });
                      },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ), child: const Text('Add 3 points' ,style: TextStyle(  color: Colors.black,
                          // fontWeight: FontWeight.bold,
                          fontSize: 20,),) ,) ,

                    ],
                  ),
                ),
                const SizedBox(
                    height:400 ,child: VerticalDivider(thickness: 1,color: Colors.grey ,indent: 20,endIndent: 20,)),
                SizedBox(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text('Team B' ,style: TextStyle(fontSize: 40,),),
                       Text('$teamBPoints ',style: TextStyle(fontSize:110 ,),),
                      ElevatedButton(onPressed: (){       setState(() {
                        teamBPoints+=1;
                      });},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ), child: const Text('Add 1 points' ,style: TextStyle(  color: Colors.black,
                          // fontWeight: FontWeight.bold,
                          fontSize: 20,),) ,) ,
                      ElevatedButton(onPressed: (){
                        setState(() {
                          teamBPoints+=2;
                        });
                      },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ), child: const Text('Add 2 points' ,style: TextStyle(  color: Colors.black,
                          // fontWeight: FontWeight.bold,
                          fontSize: 20,),) ,) ,
                      ElevatedButton(onPressed: (){
                        setState(() {
                          teamBPoints+=3;
                        });
                      },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ), child: const Text('Add 3 points' ,style: TextStyle(  color: Colors.black,
                          // fontWeight: FontWeight.bold,
                          fontSize: 20,),) ,) ,
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                teamAPoints= 0; teamBPoints=0;
              });
            },
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                minimumSize: Size(150, 50),
              ), child: const Text('Reset' ,style: TextStyle(  color: Colors.black,
                // fontWeight: FontWeight.bold,
                fontSize: 20,),) ,),
          ],
        ),
      ),
    );
  }
}
