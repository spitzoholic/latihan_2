import 'package:flutter/material.dart';

class SubScreen extends StatefulWidget {
  const SubScreen({Key? key}) : super(key: key);

  @override
  State<SubScreen> createState() => _SubScreenState();
}

class _SubScreenState extends State<SubScreen> {
  var data = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Judul Halaman'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var i = data.length;
          setState(() {
            if (i < 10) {
              i++;
              data.add(i);
            } else {
              showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Alert'),
                  content: const Text('Cukup heyyyy!'),
                  actions: <Widget>[
                    TextButton(
                      child: const Text('OK'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              );
            }
          });
        },
        child: const Icon(Icons.add),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: ((context, index) {
            return Card(
              child: ListTile(
                title: Text('${data[index]}'),
              ),
            );
          }),
        ),
      ),
    );
  }
}
