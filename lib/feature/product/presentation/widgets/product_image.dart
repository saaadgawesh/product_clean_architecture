import 'package:flutter/material.dart';

class ProductImagePlaceholder extends StatelessWidget {
  const ProductImagePlaceholder();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.grey.shade200,
      child: const Icon(Icons.image_not_supported_outlined, color: Colors.grey),
    );
  }
}
