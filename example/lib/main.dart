import 'dart:convert';

import 'package:ionicons_named/ionicons_named.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';
import 'package:json_dynamic_widget_plugin_ionicons/json_dynamic_widget_plugin_ionicons.dart';
import 'package:logging/logging.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Logger.root.onRecord.listen((record) {
    debugPrint('${record.level.name}: ${record.time}: ${record.message}');
    if (record.error != null) {
      debugPrint('${record.error}');
    }
    if (record.stackTrace != null) {
      debugPrint('${record.stackTrace}');
    }
  });

  final navigatorKey = GlobalKey<NavigatorState>();

  final registry = JsonWidgetRegistry.instance;
  JsonIoniconsPluginRegistrar.registerDefaults(registry: registry);

  // There are thousands of icons so the schema validation takes forever in
  // debug mode.  Let's turn it off.
  SchemaValidator.enabled = false;

  registry.navigatorKey = navigatorKey;

  final data = JsonWidgetData.fromDynamic(
    json.decode(
      await rootBundle.loadString('assets/pages/ionicons.json'),
    ),
  );

  registry.setValue('icons', ionicons);

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExampleWidgetPage(
        data: data,
      ),
      theme: ThemeData.light(),
    ),
  );
}

class ExampleWidgetPage extends StatelessWidget {
  const ExampleWidgetPage({
    super.key,
    required this.data,
  });

  final JsonWidgetData data;

  @override
  Widget build(BuildContext context) => data.build(context: context);
}
