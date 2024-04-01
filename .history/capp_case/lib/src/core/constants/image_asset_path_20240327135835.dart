class ImageAssetPath {
  static String _getPath(String filename) => 'assets/images/$filename';
  static final budget = _getPath('budget.png');
}
