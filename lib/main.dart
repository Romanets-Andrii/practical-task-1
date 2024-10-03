import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Калькулятор'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var result = "Result:";
  var firstNumberController = TextEditingController();
  var secondNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Калькулятор",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.red),
              ),
              Card(
                child: SizedBox(
                  width: double.infinity,
                  height: 350,
                  child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Введіть два числа",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextField(
                          keyboardType: TextInputType.number,
                          controller: firstNumberController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: ""),
                        ),
                        TextField(
                          keyboardType: TextInputType.number,
                          controller: secondNumberController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: ""),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            
                            OutlinedButton(
                                onPressed: () {
                                  var firstNumber =
                                      int.parse(firstNumberController.text);
                                  var secondNumber =
                                      int.parse(secondNumberController.text);
                                  setState(() {
                                    var addition = firstNumber + secondNumber;
                                    result = "Addition = $addition";
                                  });
                                },
                                child: Text("+")),
                            
                            OutlinedButton(
                                onPressed: () {
                                  var firstNumber =
                                      int.parse(firstNumberController.text);
                                  var secondNumber =
                                      int.parse(secondNumberController.text);
                                  var subtraction = firstNumber - secondNumber;
                                  result = "Subtraction = $subtraction";
                                  setState(() {});
                                },
                                child: Text("-")),
                            
                            OutlinedButton(
                                onPressed: () {
                                  var firstNumber =
                                      int.parse(firstNumberController.text);
                                  var secondNumber =
                                      int.parse(secondNumberController.text);

                                  setState(() {
                                    var multiplication =
                                        firstNumber * secondNumber;
                                    result = "Multiplication = $multiplication";
                                  });
                                },
                                child: Text("*")),
                            
                            OutlinedButton(
                                onPressed: () {
                                  var firstNumber =
                                      int.parse(firstNumberController.text);
                                  var secondNumber =
                                      int.parse(secondNumberController.text);

                                  var division = firstNumber / secondNumber;
                                  result =
                                      "Division = ${division.toStringAsFixed(3)}";
                                  setState(() {});
                                },
                                child: Text("/")),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Text(
                            result,
                            style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )));
  }
}
