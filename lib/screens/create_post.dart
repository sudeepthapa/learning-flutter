import 'package:flutter/material.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({Key? key}) : super(key: key);

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  // Global Key
  final _formKey = GlobalKey<FormState>();

  // Controllers
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    titleController.dispose();
    descriptionController.dispose();
  }

  @override
  void initState() {
    super.initState();
    // titleController.text = 'abx';
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          TextFormField(
            controller: titleController,
            decoration: const InputDecoration(
              icon: Icon(Icons.title_outlined),
              hintText: 'Post title',
              labelText: 'Post title',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter title.';
              }
              return null;
            },
          ),
          TextFormField(
            maxLines: 3,
            controller: descriptionController,
            decoration: const InputDecoration(
              icon: Icon(Icons.description),
              hintText: 'Description',
              labelText: 'Description',
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
              } else {}
            },
            child: const Text('Post'),
          )
        ],
      ),
    );
  }
}
