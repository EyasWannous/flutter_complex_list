import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complex_list/complex_list/complex_list.dart';

import 'item_view.dart';

class ComplexListView extends StatelessWidget {
  const ComplexListView({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ComplexListCubit>().state;
    return switch (state.status) {
      ListStatus.failure => const Center(
          child: Text('Oops something went wrong!'),
        ),
      ListStatus.loading => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ListStatus.success => ItemView(items: state.items),
    };
  }
}
