import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  int num1 = 0;
  int num2 = 0;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff9800),
        title: const Text(
          "Points Counter",
          style: TextStyle(
              color: Color(0xff644215),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Team E",
                    style: TextStyle(
                        color: Colors.black.withOpacity(.8), fontSize: 33),
                  ),
                  Text(
                    num1.toString(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 120,
                    ),
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xffff9800)),
                      ),
                      onPressed: () {
                        setState(() {
                          num1 += 1;
                        });
                      },
                      child: const Text(
                        "Add 1 Point",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xffff9800)),
                      ),
                      onPressed: () {
                        setState(() {
                          num1 += 2;
                        });
                      },
                      child: const Text(
                        "Add 2 Point",
                        style:
                        TextStyle(color: Colors.black, fontSize: 20),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xffff9800)),
                      ),
                      onPressed: () {
                        setState(() {
                          num1 += 3;
                        });
                      },
                      child: const Text(
                        "Add 3 Point",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      )),
                ],
              ),
              SizedBox(
            //    height: screenHeight*.5,
                height: 350,
                child: const VerticalDivider(
                  color: Colors.grey,
                 thickness: .8,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Team B",
                    style: TextStyle(
                        color: Colors.black.withOpacity(.8), fontSize: 33),
                  ),
                  Text(
                    num2.toString(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 120,
                    ),
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xffff9800)),


                      ),


                      onPressed: () {
                        setState(() {
                          num2 += 1;
                        });
                      },
                      child: const Text(
                        "Add 1 Point",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xffff9800)),
                      ),
                      onPressed: () {
                        setState(() {
                          num2 += 2;
                        });
                      },
                      child: const Text(
                        "Add 2 Point",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xffff9800)),
                      ),
                      onPressed: () {
                        setState(() {
                          num2 += 3;
                        });
                      },
                      child: const Text(
                        "Add 3 Point",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      )),
                ],
              )
            ],
          ),
          ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Color(0xffff9800))),
              onPressed: () {
                setState(() {
                  num1 = 0;
                  num2 = 0;
                });
              },
              child: const Text(
                "Reset",
                style: TextStyle(color: Colors.black, fontSize: 20),
              )),
        ],
      ),
    );
  }
}
