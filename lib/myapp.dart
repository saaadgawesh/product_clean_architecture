import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:productCleanArchitecture/config/di/service_locator.dart';
import 'package:productCleanArchitecture/feature/product/presentation/cubit/product_cubit.dart';
import 'package:productCleanArchitecture/feature/product/presentation/screens/homescreen.dart';

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    ProductCubit productCubit = servicelocator.get<ProductCubit>();
    return BlocProvider<ProductCubit>(
      create: (context) => productCubit..getProduct(1, 10),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: Homescreen()),
    );
  }
}
