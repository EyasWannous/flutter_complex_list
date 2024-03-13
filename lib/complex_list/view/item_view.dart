import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complex_list/complex_list/complex_list.dart';

import 'item_tile.dart';

class ItemView extends StatelessWidget {
  const ItemView({required this.items, super.key});

  final List<Item> items;

  @override
  Widget build(BuildContext context) {
    return items.isEmpty
        ? const Center(child: Text('No Content'))
        : ListView.builder(
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return ItemTile(
                item: items[index],
                onDeletePressed: (id) {
                  context.read<ComplexListCubit>().deleteItem(id);
                },
              );
            },
          );
  }
}
