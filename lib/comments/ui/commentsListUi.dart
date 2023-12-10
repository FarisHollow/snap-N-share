import 'package:flutter/material.dart';

class CommentsListUi extends StatelessWidget {
  const CommentsListUi({
    super.key,
    required this.comments,
  });

  final List<Map<String, String>> comments;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: comments.length,
      reverse: false,
      itemBuilder: (context, index) {
        return Padding(
          padding:
          const EdgeInsets.only(left: 14.0, right: 12, top: 2, bottom: 0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 22.0,
                backgroundColor: Colors.white,
                child: Image.asset("assets/images/img.png"),
              ),
              const SizedBox(width: 8.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '${comments[index]['user']}',
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            wordSpacing: 0.9,
                            letterSpacing: 0.10,
                            fontSize: 18,
                            color: Colors.black87,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '${comments[index]['timestamp']}',
                          style: const TextStyle(
                              color: Colors.black38,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        const Spacer(flex: 2),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_outline_outlined),
                          color: Colors.black45,
                          iconSize: 30,
                        ),
                      ],
                    ),
                    Text(
                      '${comments[index]['comment']}',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Add comment logic
                        print('Reply!');
                        // Navigator.pop(context); // Close the bottom sheet after posting
                      },
                      style: TextButton.styleFrom(
                        minimumSize: const Size(50, 0),
                        alignment: Alignment.topLeft,
                        padding:
                        const EdgeInsets.only(left: 0, top: 0, bottom: 0),
                        // No padding on the left side
                      ),
                      child: const Text(
                        'Reply',
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: 17.0,
                        ),
                      ),
                    ),
                    // commentCounts(comments),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}