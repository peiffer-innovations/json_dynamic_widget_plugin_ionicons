# json_dynamic_widget_plugin_ionicons

## Table of Contents

* [Live Example](#live-example)
* [Introduction](#introduction)
* [Using the Plugin](#using-the-plugin)


## Live Example

* [Web](https://peiffer-innovations.github.io/json_dynamic_widget_plugin_ionicons/web/index.html#/)


## Introduction

Plugin to the [JSON Dynamic Widget](https://peiffer-innovations.github.io/json_dynamic_widget) to provide named support for Material Icons.


## Using the Plugin

```dart
import 'package:json_dynamic_widget/json_dynamic_widget.dart';
import 'package:json_dynamic_widget_plugin_ionicons/json_dynamic_widget_plugin_ionicons.dart';


void main() {
  // Ensure Flutter's binding is complete
  WidgetsFlutterBinding.ensureInitialized();

  // ...

  // Get an instance of the registry
  var registry = JsonWidgetRegistry.instance;

  // Bind the plugin to the registry.  This is necessary for the registry to
  // find the widget provided by the plugin
  JsonMaterialIconsPlugin.bind(registry);

  // ...
}
```

The icons can be referenced by name ising the new `ionicons` type such as:
```dart
{
  'type': 'ionicons',
  'args': {
    'icon': 'arrow_up'
  }
}
```
