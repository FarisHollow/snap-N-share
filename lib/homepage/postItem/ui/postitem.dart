import 'package:flutter/material.dart';
import 'package:snap_n_share/comments/ui/bottomsheet.dart';

class PostItem extends StatelessWidget {
  final String username;
  final String userId;
  final String imagePath;
   final int commentCount;

  const PostItem({
    Key? key,
    required this.username,
    required this.userId,
    required this.imagePath,
     required this.commentCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 20.0,
              backgroundImage: AssetImage('assets/images/img.png'),
            ),
            const SizedBox(width: 8.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  username,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(userId),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                // Add your notification button logic here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
              ),
              child: const Icon(Icons.notifications_outlined),
            )
          ],
        ),
        const SizedBox(height: 8.0),
        // Post Image/Video
        Image.asset(
          imagePath,
          fit: BoxFit.cover,
          height: 300.0,
        ),
        const SizedBox(height: 8.0),
        // Like and Comment Buttons
        Row(
          children: [
            IconButton(
              onPressed: () {
                // Add your favorite button logic here
              },
              icon: const Icon(Icons.favorite_outline, size: 35),
            ),
            const SizedBox(width: 2.0),
            IconButton(
              onPressed: () {
                // Add your favorite button logic here
                showCommentBottomSheet(context);
              },
              icon: const Icon(Icons.comment_outlined, size: 35),
            ),
            const SizedBox(width: 2.0),
            TextButton(
              onPressed: () {
                // Add your text button logic here
                showCommentBottomSheet(context);
              },
              child: Text(
                '$commentCount comments',

                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                // Add your favorite button logic here
              },
              icon: const Icon(
                Icons.bookmark_border_outlined,
                size: 35,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8.0),
      ],
    );
  }
}
