import 'package:flutter/material.dart';

import '../../widgets/category_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var value1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.green],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hola!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19.0,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Phatthadon Chanoo',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 8.0),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 3.0,
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/lhong.jpg'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 222, 250, 255),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
                    child: Text(
                      'Entertainment',
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.center,
                          child: CategoryButton(
                            text: 'Games',
                            icon: Icons.games,
                            color: Colors.blue,
                            isSelected: value1,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.center,
                          child: CategoryButton(
                            text: 'Music',
                            icon: Icons.music_note,
                            color: Colors.red,
                            isSelected: !value1,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.center,
                          child: CategoryButton(
                            text: 'Podcasts',
                            icon: Icons.podcasts,
                            color: Colors.purple,
                            isSelected: true,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.center,
                          child: CategoryButton(
                            text: 'Live',
                            icon: Icons.live_tv,
                            color: Colors.green,
                            isSelected: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 32.0),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          value1 = !value1;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        padding: EdgeInsets.symmetric(
                            horizontal: 32.0, vertical: 16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        shadowColor: Colors.blueAccent,
                        elevation: 5.0,
                      ),
                      child: Text(
                        'GO',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
