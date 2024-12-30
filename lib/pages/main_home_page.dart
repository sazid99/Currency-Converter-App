import 'package:flutter/material.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  final TextEditingController textEditingController = TextEditingController();
  double result = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      body: SingleChildScrollView(
//blue color container
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, top: 60, right: 10, bottom: 10),
              child: Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
//red color title currency converter
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                      ),
                      child: Text(
                        "Currency Converter",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 30),
// Input Enter amount Text field
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextField(
                        controller: textEditingController,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          hintText: "Enter amount",
                          hintStyle: TextStyle(color: Colors.white),
                          filled: true,
                          fillColor: Colors.black54,
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
// Currency change row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 20),
//First from currency button
                          child: TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white70),
                              minimumSize: MaterialStatePropertyAll(
                                Size(80, 40),
                              ),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              )),
                            ),
                            child: Text(
                              "USD",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                        Icon(
                          Icons.double_arrow,
                          size: 50,
                          color: Colors.white,
                        ),
// To currency button
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white70),
                              minimumSize: MaterialStatePropertyAll(
                                Size(80, 40),
                              ),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              )),
                            ),
                            child: Text(
                              "BDT",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
// Result showing text box
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "$result",
                                      style: TextStyle(
                                          fontSize: 25, color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
// Currency conversion rate now
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "1 USD = 120 BDT",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
// Convert button
            ElevatedButton(
              onPressed: () {
                setState(() {
                  result = double.parse(textEditingController.text) * 120;
                });
              },
              style: ButtonStyle(
                minimumSize: MaterialStatePropertyAll(Size(170, 170)),
                backgroundColor: MaterialStatePropertyAll(Colors.white),
                shape: MaterialStateProperty.all<CircleBorder>(
                  const CircleBorder(),
                ),
              ),
              child: Text(
                "Convert",
                style: TextStyle(fontSize: 30),
              ),
            )
          ],
        ),
      ),
    );
  }
}
