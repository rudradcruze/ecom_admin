import 'package:flutter/material.dart';

class CheckoutHeadline extends StatelessWidget {
  const CheckoutHeadline({
    super.key, required this.headline,
  });
  final String headline;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            headline,
            style: const TextStyle(fontSize: 20.0),
          ),
        ),
        const Divider(
          color: Colors.black,
          height: 2.0,
        ),
      ],
    );
  }
}
