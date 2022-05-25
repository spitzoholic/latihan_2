import 'package:flutter/material.dart';
import 'package:latihan_2/data_model.dart';
import 'package:latihan_2/style.dart';

class DetailScreen extends StatelessWidget {
  final DataModel item;
  const DetailScreen({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              Image.network(
                item.imageLocationUrl,
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.5),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back),
                    ),
                  ),
                ),
              )
            ],
          ),
          Center(
            child: Column(
              children: [
                const Divider(
                  height: 20,
                ),
                Text(
                  item.name,
                  style: TextDefault.text16B,
                ),
                const Divider(
                  height: 20,
                ),
                const Text(
                  'Address',
                ),
                Text(
                  item.address,
                ),
                const Divider(
                  height: 30,
                ),
                const Text('Phone Number'),
                Text(
                  item.phoneNumber,
                ),
                const Divider(),
                const Text('Latitude'),
                Text(
                  item.lat.toString(),
                ),
                const Divider(),
                const Text('Longitude'),
                Text(
                  item.long.toString(),
                ),
                const Divider(),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
