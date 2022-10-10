import 'package:flutter/material.dart';
import 'package:praktikum_mobile/data/detailargs.dart';
import 'package:praktikum_mobile/page/detail.dart';

import '../main.dart';

import 'package:praktikum_mobile/data/data.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Home')),
      ),
      body: Container(
          padding: const EdgeInsets.all(8),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                mainAxisExtent: MediaQuery.of(context).size.width * 0.4),
            itemCount: listWisata.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                child: gridComponent(listWisata[index].namaWisata,
                    listWisata[index].imgAssets, context),
                onTap: () {
                  Navigator.pushNamed(context, '/detail',
                      arguments: DetailArgs(
                          namaWisata: listWisata[index].namaWisata,
                          imgAssets: listWisata[index].imgAssets,
                          videoAssets: listWisata[index].videoAssets,
                          lokasi: listWisata[index].lokasi,
                          desc: listWisata[index].desc));
                },
              );
            },
          )),
    );
  }

  Stack gridElement(String namaWisata, Color color) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          color: color,
        ),
        Container(
          padding: EdgeInsets.all(16),
          child: Text(
            namaWisata,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  Stack gridComponent(String text, String asset, context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          child: Image.network(
            asset,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Container(
              padding: EdgeInsets.all(16),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            )),
      ],
    );
  }
}
