import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complex_list/complex_list/complex_list.dart';
import 'package:flutter_complex_list/repository.dart';

import 'complex_list_view.dart';

class ComplexListPage extends StatelessWidget {
  const ComplexListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => ComplexListCubit(
          repository: context.read<Repository>(),
        )..fetchList(),
        child: const ComplexListView(),
      ),
    );
  }
}
