import 'package:flutter/material.dart';
import 'package:teshco/counter.dart';
import 'dart:ffi';
import 'package:teshco/avatar_test.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
class TwoDrawers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("TESCHO"),
        leading: Builder(
          builder: (context){
            return IconButton(
              icon: Icon(Icons.lock_clock_outlined),
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: <Widget>[
          Builder(
            builder: (context){
              return IconButton(
                icon: Icon(Icons.people_outline),
                onPressed: (){
                  Scaffold.of(context).openEndDrawer();
                },
              );
            },
          )
        ],
      ),
      drawer: Drawer(width: 100,
        child: Container(
          color: Color.fromARGB(255, 45, 67, 85),
          child: const Center(
            child: CountDown(), 

          ),
        ),
      ),
      endDrawer: Drawer(width: 200,
        child: Container(
          color: Colors.transparent,
          child: Center(
            child: Avatar(),
          ),
        ),
      ),
       bottomNavigationBar: BottomNavigationBar(
        
        
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "old topics"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "profile")
        ],
      )
    );
  }
}

class CountDown extends StatefulWidget {
  const CountDown({Key? key}) : super(key: key);

  @override
  State<CountDown> createState() => _CountDownState();
}

class _CountDownState extends State<CountDown> {
  static const countdownDuration = Duration(hours: 12);
  Duration duration = Duration();
  Timer? timer;
  bool isCountdown = true;
  @override
  void initState() {
    super.initState();
    startTimer();
    reset();
  }
  void reset(){
    if (isCountdown){
    setState(() => duration = countdownDuration);
    } else{
      setState(() => duration = Duration());
    }

  }

  void addDecreaseTime() {
    final addSeconds = isCountdown ? -1:1;
    setState(() {
      final seconds = duration.inSeconds + addSeconds;
      duration = Duration(seconds: seconds);
    });
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (_) => addDecreaseTime());
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: buildTime(),
        ),
      );
  Widget buildTime() {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
     
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildTimeCard(time: hours, header: "hours"),
        buildTimeCard(time: minutes,header: "minutes"),
        const SizedBox(width: 8),
        buildTimeCard(time: seconds, header: "seconds")
      ],
    );
  }
  Widget buildTimeCard({required String time, required String header}) => 
  Container(
    decoration: BoxDecoration(
      color: Colors.transparent,
      borderRadius:  BorderRadius.circular(10),
    ),
  child :Text(
     time ,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
      fontSize: 30
    ),
  )
);
}

class Avatar extends StatelessWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [/*BURAYA  GELEN APIYI BAGLA */
          buildListTile(title: "wiem"),
          buildListTile(title: "Nevzat"),
          buildListTile(title: "caghan"),
          buildListTile(title: "Musa"),
          buildListTile(title: "efe")
        ],
      ),
    );
  }
}

Widget buildListTile({
  required String title
}) => ListTile(
  contentPadding: EdgeInsets.symmetric(horizontal:16 ),
  leading: CircleAvatar(
    backgroundColor: Colors.orange,
    /*backgroundImage: buraya imageler gelicek api bagladigimda serverden çekecek,*/
    child: Text(
      title[0].toUpperCase() ,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
    ),
  ),
  title: Text(title),

);