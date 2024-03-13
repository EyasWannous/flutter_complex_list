import 'package:flutter/material.dart';
import 'package:flutter_complex_list/complex_list/complex_list.dart';

class ItemTile extends StatelessWidget {
  const ItemTile({
    required this.item,
    required this.onDeletePressed,
    super.key,
  });

  final Item item;
  final ValueSetter<String> onDeletePressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      child: ListTile(
        title: Text(item.value),
        trailing: item.isDeleting
            ? const CircularProgressIndicator.adaptive()
            : IconButton(
                icon: Icon(
                  Icons.delete,
                  color: theme.colorScheme.error,
                ),
                onPressed: () => onDeletePressed(item.id),
              ),
      ),
    );
  }
}
