import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:praktikum_mobile/component/favbutton.dart';
import 'package:praktikum_mobile/component/videoplayer.dart';
import 'package:praktikum_mobile/data/detailargs.dart';
import 'package:android_intent_plus/android_intent.dart';
import 'package:android_intent_plus/flag.dart';

import '../main.dart';

class DetailPage extends StatelessWidget {
  DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as DetailArgs;

    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Container(
                margin: EdgeInsets.only(right: 52), child: Text('Detail')),
          ),
        ),
        body: ListView(
          children: [
            imgView(args.imgAssets),
            titleSection(args.namaWisata, args.lokasi),
            buttonSection(),
            descSection(args.desc),
            VideoPlayerComponent(video: args.videoAssets),
          ],
        ));
  }

  Image imgView(String assets) {
    return Image.network(
      assets,
      width: 600,
      fit: BoxFit.cover,
    );
  }

  Container titleSection(String namaWisata, String lokasi) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  child: Text(namaWisata,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                ),
                Text(
                  lokasi,
                  style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          const FavouriteButton()
        ],
      ),
    );
  }

  Container buttonSection() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildIconButton('CALL', Icons.call, 'call'),
          _buildIconButton('ROUTE', Icons.near_me, 'route'),
          _buildIconButton('SHARE', Icons.share, 'share')
        ],
      ),
    );
  }

  GestureDetector _buildIconButton(
      String text, IconData icon, String condition) {
    return GestureDetector(
      child: Column(
        children: [
          Container(
              margin: const EdgeInsets.only(bottom: 8),
              child: Icon(
                icon,
                color: Colors.blue,
              )),
          Text(
            text,
            style: TextStyle(color: Colors.blue),
          )
        ],
      ),
      onTap: () => openChooser(condition),
    );
  }

  Container descSection(String desc) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Expanded(
          child: Text(
        desc,
        textAlign: TextAlign.justify,
      )),
    );
  }

  Future<void> share() async {
    await FlutterShare.share(
        title: 'Example share',
        text: 'Example share text',
        linkUrl: 'https://flutter.dev/',
        chooserTitle: 'Example Chooser Title');
  }

  void openChooser(String condition) {
    var intent;
    switch (condition) {
      case 'share':
        share();
        break;
      case 'call':
        intent = const AndroidIntent(
            action: 'android.intent.action.DIAL', data: 'tel:087865439876');
        intent.launchChooser('Choose App');
        break;
      case 'route':
        intent = AndroidIntent(
            action: 'action_view',
            data: Uri.encodeFull('google.streetview:cbll=46.414382,10.013988'),
            package: 'com.google.android.apps.maps');
        intent.launch();

        break;
      default:
    }
  }
}
