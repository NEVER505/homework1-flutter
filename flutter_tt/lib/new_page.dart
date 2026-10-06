import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  final bool isRed;
  const NewPage({super.key, required this.isRed});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.isRed ? Colors.red : Colors.white,
      appBar: AppBar(
        title: const Text('new page'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          TextField(
            controller: textEditingController,
          ),
          Text(textEditingController.text),
          TextButton(
            onPressed: () {
              setState(() {});
            },
            child: const Text('go to the next page'),
          ),
        ],
      ),
    );
  }
}