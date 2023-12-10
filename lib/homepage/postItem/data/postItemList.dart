
import 'package:flutter/material.dart';
import 'package:snap_n_share/homepage/postItem/ui/postitem.dart';

class Postitemlist extends StatelessWidget {
  const Postitemlist({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PostItem(
          username: 'Toni',
          userId: 'toni@',
          imagePath: 'assets/images/img.png',
          commentCount: 12,
        ),
        PostItem(
          username: 'Toni',
          userId: 'toni@',
          imagePath: 'assets/images/img.png',
          commentCount: 12,
        ),
        PostItem(
          username: 'Toni',
          userId: 'toni@',
          imagePath: 'assets/images/img.png',
          commentCount: 12,
        ),
      ],
    );
  }
}
