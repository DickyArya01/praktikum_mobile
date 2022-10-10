import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FavouriteButton extends StatefulWidget {
  const FavouriteButton({Key? key}) : super(key: key);

  @override
  State<FavouriteButton> createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton> {
  bool isFavourited = false;
  int favCount = 41;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            onButtonToggle();
          },
          icon: (isFavourited)
              ? const Icon(
                  Icons.star,
                  color: Colors.orange,
                )
              : const Icon(Icons.star_border),
          color: Colors.orange,
        ),
        Text('$favCount')
      ],
    );
  }

  void onButtonToggle() {
    setState(() {
      if (isFavourited) {
        favCount--;
        isFavourited = false;
      } else {
        favCount++;
        isFavourited = true;
      }
    });
  }
}
