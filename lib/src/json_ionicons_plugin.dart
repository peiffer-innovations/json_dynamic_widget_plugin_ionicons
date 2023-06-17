import 'package:json_dynamic_widget/json_dynamic_widget.dart';
import 'package:json_dynamic_widget_plugin_ionicons/json_dynamic_widget_plugin_ionicons.dart';
import 'package:json_theme/json_theme_schemas.dart';

class JsonIoniconsPlugin {
  static void bind(JsonWidgetRegistry registry) {
    final schemaCache = SchemaCache();
    schemaCache.addSchema(
      IoniconSchema.id,
      IoniconSchema.schema,
    );

    registry.registerCustomBuilder(
      JsonIoniconBuilder.kType,
      const JsonWidgetBuilderContainer(
        builder: JsonIoniconBuilder.fromDynamic,
        schemaId: IoniconSchema.id,
      ),
    );
  }
}
