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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            Text(item.name, style: TextDefault.text20),
            Column(
              children: [
                const Text('Address'),
                Text(
                  item.address,
                  style: TextDefault.text20,
                ),
                const Divider(),
                const Text('Phone Number'),
                Text(
                  item.phoneNumber,
                  style: TextDefault.text20,
                ),
                const Divider(),
                const Text('Latitude'),
                Text(
                  item.lat.toString(),
                  style: TextDefault.text20,
                ),
                const Divider(),
                const Text('Longitude'),
                Text(
                  item.long.toString(),
                  style: TextDefault.text20,
                ),
                const Divider(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
