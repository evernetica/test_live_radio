class DataState<T> {
  final T? data;
  final Exception? exception;
  const DataState({this.data, this.exception});
}