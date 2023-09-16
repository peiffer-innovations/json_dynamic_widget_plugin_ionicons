import 'package:ionicons_named/ionicons_named.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

part 'ison_ionicon_builder.g.dart';

/// Builder that can build an [Icon] widget.
@JsonWidget(
  type: 'ionicon',
  jsonWidget: 'Ionicon',
)
abstract class _JsonIoniconBuilder extends JsonWidgetBuilder {
  const _JsonIoniconBuilder({
    super.args,
  });

  @JsonArgEncoder('icon')
  static dynamic _encodeIcon(IconData value) {
    dynamic result = value.codePoint;
    for (var icons in ionicons.entries) {
      if (icons.value.codePoint == value.codePoint) {
        result = icons.key;
        break;
      }
    }

    return result;
  }

  @JsonArgDecoder('icon')
  IconData _decodeIcon({required dynamic value}) {
    IconData result;

    if (value is IconData) {
      result = value;
    } else if (value is int) {
      result = IconData(value);
    } else if (value is String) {
      result = ionicons[value]!;
    } else {
      throw Exception('Unknown icon type encountered: [$value]');
    }

    return result;
  }

  @JsonPositionedParam('icon')
  @JsonSchemaName('IoniconSchema')
  @override
  Icon buildCustom({
    ChildWidgetBuilder? childBuilder,
    required BuildContext context,
    required JsonWidgetData data,
    Key? key,
  });
}
