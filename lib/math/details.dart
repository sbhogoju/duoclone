import 'package:flutter/material.dart';

class MathDetails extends StatefulWidget {
  const MathDetails({super.key});

  @override
  State<MathDetails> createState() => _MathDetailsState();
}

class _MathDetailsState extends State<MathDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.grey,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
