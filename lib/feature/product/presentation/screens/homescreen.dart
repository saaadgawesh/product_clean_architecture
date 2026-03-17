import 'package:flutter/material.dart';
import 'package:productCleanArchitecture/config/di/service_locator.dart';
import 'package:productCleanArchitecture/feature/product/presentation/cubit/product_cubit.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    ProductCubit productCubit = servicelocator.get<ProductCubit>();
    productCubit.getProduct(1, 10);
    return Scaffold(appBar: AppBar(title: Text('hello')));
  }
}
