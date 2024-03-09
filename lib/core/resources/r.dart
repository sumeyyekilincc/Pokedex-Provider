import 'package:pokedex/core/resources/app_color.dart';
import 'package:pokedex/core/resources/drawable.dart';
import 'package:pokedex/core/resources/dimens.dart';

class R {
  static void refreshClass() {
    _drawable = null;
    _appColor = null;
    _dimens = null;
  }

  static Drawable? _drawable;
  static Drawable get drawable => _drawable ??= Drawable();

  static AppColor? _appColor;
  static AppColor get appColor => _appColor ??= AppColor();

  static Dimens? _dimens;
  static Dimens get dimens => _dimens ??= Dimens();
}
