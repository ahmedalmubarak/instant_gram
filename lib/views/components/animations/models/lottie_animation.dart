enum LottieAnimation {
  dataNotFound(name: 'data_not_found'),
  loading(name: 'loading'),
  error(name: 'error'),
  smallError(name: 'small_error'),
  empty(name: 'empty');

  final String name;
  const LottieAnimation({
    required this.name,
  });
}
