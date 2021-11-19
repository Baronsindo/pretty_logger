A flutter package that developers have pretty logs instead just printing everything like a newbie.


## Features

Makes it easy to log to console without using print in a colorful way, with multiple colors.


## Getting started
### Installing
Add the following to your pubspec.yaml file:

```yaml
dependencies:
  pretty_logs: any
```

Import the package.
```dart
import 'package:pretty_logs/pretty_logs.dart';
```



## Usage

```dart

void main() {
  Logger.info('Hello buddy');
  Logger.success('Welcome');
  Logger.warning('I am a bad man. Be careful');
  Logger.error('Ops. We ran into some trouble');

  Logger.black('black');
  Logger.red('red');
  Logger.white('white');
  Logger.cyan('cyan');
  Logger.green('green');
  Logger.yellow('yellow');

  runApp(const MyApp());
}
```

## Supported functions

Main function
| Function usage | Output Color |
|--|--|
|`Logger.info('Hello buddy');`|Blue|
|`Logger.success('Welcome');`|Green|
|`Logger.warning('Be careful');`|Yellow|
|`Logger.error('Ops. trouble')`|Red|

Additional colors
| Function usage | Output Color |
|--|--|
|`Logger.black('black');`|Black|
|`Logger.red('red');`|Red|
|`Logger.white('white');`|White|
|`Logger.cyan('cyan');`|Cyan|
|`Logger.green('green');`|Green|
|`Logger.yellow('yellow');`|Yellow|
|`Logger.blue('Blue');`|Blue|
