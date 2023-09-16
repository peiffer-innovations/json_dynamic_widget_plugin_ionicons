// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_ionicons_plugin_registrar.dart';

// **************************************************************************
// Generator: JsonWidgetRegistrarBuilder
// **************************************************************************

class JsonIoniconsPluginRegistrar extends _JsonIoniconsPluginRegistrar {
  final Map<String, JsonWidgetBuilderContainer> _builders =
      <String, JsonWidgetBuilderContainer>{};

  final Map<String, Map<String, Object>> _schemas =
      <String, Map<String, Object>>{};

  static JsonIoniconsPluginRegistrar registerDefaults(
      {JsonWidgetRegistry? registry}) {
    registry ??= JsonWidgetRegistry.instance;
    return JsonIoniconsPluginRegistrar()
      ..withIcon()
      ..register(registry);
  }

  Map<String, Map<String, Object>> get schemas =>
      Map<String, Map<String, Object>>.from(_schemas);
  void register(JsonWidgetRegistry registry) {
    for (var b in _builders.entries) {
      registry.registerCustomBuilder(b.key, b.value);
    }

    final schemaCache = SchemaCache();
    for (var s in _schemas.entries) {
      schemaCache.addSchema(s.key, s.value);
    }
  }

  void withIcon() {
    _builders[JsonIoniconBuilder.kType] = const JsonWidgetBuilderContainer(
      builder: JsonIoniconBuilder.fromDynamic,
      schemaId: IoniconSchema.id,
    );
    _schemas[IoniconSchema.id] = IoniconSchema.schema;
  }
}
