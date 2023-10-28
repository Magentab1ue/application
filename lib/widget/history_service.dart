import 'package:flutter/material.dart';

class HistoryService extends StatefulWidget {
  const HistoryService({super.key});

  @override
  State<HistoryService> createState() => _HistoryServiceState();
}

class _HistoryServiceState extends State<HistoryService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          buildBoxTextHead(),
          buildImageHead(),
        ],
      ),
    );
  }

  Image buildImageHead() {
    return Image.asset(
      'images/rec.png',
      width: 150,
      height: 150,
    );
  }

  Padding buildBoxTextHead() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
          height: 100,
          decoration: const BoxDecoration(
            color: Colors.white, // สีพื้นหลังของ Container
            boxShadow: [
              BoxShadow(
                color: Colors.grey, // สีของเงา
                offset: Offset(0, 3), // ตำแหน่งเงาในแนวแกน x และ y
                blurRadius: 4, // ความคมชัดของเงา
                spreadRadius: 2, // การกระจายของเงา
              ),
            ],
          ),
          child: const Center(
            child: Text(
              'ประวัติการใช้บริการ',
              style: TextStyle(fontSize: 20),
            ),
          )),
    );
  }
}
