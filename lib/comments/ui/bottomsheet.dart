import 'package:flutter/material.dart';
import 'package:snap_n_share/comments/data/commentlist.dart';

void showCommentBottomSheet(BuildContext context) {
  TextEditingController textController = TextEditingController();
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(16.0),
      ),
    ),
    isScrollControlled: true,
    builder: (BuildContext context) {
      return SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.60,
            // height: 500,
            padding: const EdgeInsets.only(
              left: 0.0,
              right: 0.0,
              top: 12.0,
            ),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Comments',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: .5, // Adjust the blur radius as needed
                        spreadRadius: .5, // Adjust the spread radius as needed
                      ),
                    ],
                  ),
                  // child: SizedBox(height: 1.0, width: 2.0),
                ),

                Expanded(
                  child: Container(
                    height: 500,
                    child: buildDynamicCommentsList(),
                  ),
                ),
                // const SizedBox(height: 12.0),
                Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: .5, // Adjust the blur radius as needed
                        spreadRadius: .5, // Adjust the spread radius as needed
                      ),
                    ],
                  ),
                  // child: SizedBox(height: 1.0, width: 2.0),
                ),
                // Input field for adding new comments and post button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    // User profile picture (you can replace this with an actual user picture)
                    CircleAvatar(
                      radius: 22.0,
                      backgroundColor: Colors.white,
                      child: Image.asset("assets/images/img.png"),
                    ),
                    const SizedBox(width: 12.0),
                    // Comment TextField
                    Expanded(
                      child: TextField(
                        controller: textController,
                        decoration: const InputDecoration(
                          hintText: 'Add a comment...',
                          // border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    // Post Button
                    TextButton(
                      onPressed: () {
                        // Add comment logic
                        print('Comment added!');
                        textController.clear();
                        // Navigator.pop(context); // Close the bottom sheet after posting
                      },
                      style: TextButton.styleFrom(
                        // backgroundColor: Colors.blue, // Replace with your desired background color
                        padding: const EdgeInsets.all(16.0),
                      ),
                      child: const Text(
                        'Post',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          // Replace with your desired text color
                          fontSize: 18.0, // Adjust font size as needed
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
