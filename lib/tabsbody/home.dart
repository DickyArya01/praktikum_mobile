import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../data/data.dart';
import '../data/detailargs.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => DetailPage(namaWisata: listWisata[index].namaWisata, imgAsssets: listWisata[index].imgAssets),
                    //     ));
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
            )));
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
