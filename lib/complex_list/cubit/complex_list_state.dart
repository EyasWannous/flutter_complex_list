part of 'complex_list_cubit.dart';

enum ListStatus { loading, success, failure }

final class ComplexListState extends Equatable {
  const ComplexListState._({
    this.status = ListStatus.loading,
    this.items = const <Item>[],
  });

  const ComplexListState.failure() : this._(status: ListStatus.failure);

  const ComplexListState.loading() : this._();

  const ComplexListState.success(List<Item> items)
      : this._(status: ListStatus.success, items: items);

  final ListStatus status;
  final List<Item> items;

  @override
  List<Object> get props => [status, items];
}
