class ImageAssetPath {
  static String _getPath(String filename) => 'assets/images/$filename';
  static final budget = _getPath('budget.png');
  static final icon_money = _getPath('ic_money.png');
  static final icon_google = _getPath('ic_google.png');
}
