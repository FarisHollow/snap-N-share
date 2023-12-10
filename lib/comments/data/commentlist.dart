import 'package:flutter/material.dart';
import 'package:snap_n_share/comments/ui/commentsListUi.dart';

Widget buildDynamicCommentsList() {
  // Replace this with your dynamic comment data
  List<Map<String, String>> comments = [
    {
      'user': 'User1',
      'comment': 'Nice photo Nice photo Nice photo '
          'Nice photo Nice photo Nice photo Nice '
          'photo Nice photo Nice photo Nice photo Nice photo Nice photo Nice '
          'photo Nice photo Nice photo Nice photo Nice photo Nice photo Nice photo '
          'Nice photo Nice photo Nice photo Nice photo Nice photo !',
      'timestamp': '2 hours ago'
    },
    {'user': 'User2', 'comment': 'Beautiful!', 'timestamp': '1 hour ago'},
    {'user': 'User3', 'comment': 'Love it!', 'timestamp': '30 minutes ago'},
    {'user': 'User3', 'comment': 'Love it!', 'timestamp': '30 minutes ago'},
    {'user': 'User3', 'comment': 'Love it!', 'timestamp': '30 minutes ago'},
    {'user': 'User3', 'comment': 'Love it!', 'timestamp': '30 minutes ago'},
    {'user': 'User3', 'comment': 'Love it!', 'timestamp': '30 minutes ago'},
    {'user': 'User3', 'comment': 'Love it!', 'timestamp': '30 minutes ago'},
    {'user': 'User3', 'comment': 'Love it!', 'timestamp': '30 minutes ago'},
    {'user': 'User3', 'comment': 'Love it!', 'timestamp': '30 minutes ago'},
    {'user': 'User3', 'comment': 'Love it!', 'timestamp': '30 minutes ago'},
    {'user': 'User3', 'comment': 'Love it!', 'timestamp': '30 minutes ago'},
    {'user': 'User3', 'comment': 'Love it!', 'timestamp': '30 minutes ago'},
    {'user': 'User3', 'comment': 'Love it!', 'timestamp': '30 minutes ago'},
    {'user': 'User3', 'comment': 'Love it!', 'timestamp': '30 minutes ago'},
  ];

  return CommentsListUi(comments: comments);
}


