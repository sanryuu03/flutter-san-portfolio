extension CapitalizedStringExtension on String {
  String toCapitalized() => length > 0
      ? '${this[0].toUpperCase()}${this.substring(1).toLowerCase()}'
      : '';
  String get capitalizeFirstofEach =>
      this.split(' ').map((str) => str.toCapitalized()).join(' ');
}