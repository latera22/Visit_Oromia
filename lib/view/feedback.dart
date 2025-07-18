import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class CommentScreen extends StatefulWidget {
  @override
  _CommentScreenState createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  final TextEditingController _commentController = TextEditingController();
  final DatabaseReference _databaseReference = FirebaseDatabase.instance.reference().child('comments');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('Visit Ethiopia'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text('Give Us Your Feedback', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              TextField(
                controller: _commentController,
                decoration: InputDecoration(
                  hintText: 'Enter your comment',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                child: Text('Submit'),
                onPressed: () {
                  _submitComment(_commentController.text);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submitComment(String comment) {
    print('Submitting comment: $comment');
    // Push the comment to the database
    _databaseReference.push().set({
      'comment': comment,
      'timestamp': DateTime.now().millisecondsSinceEpoch,
    }).then((_) {
      // Clear the comment field
      _commentController.clear();
    });
  }
}