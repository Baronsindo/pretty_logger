A flutter package that developers have pretty logs instead just printing everything like a newbie.


## Features

Makes it easy to log to console without using print in a colorful way, with multiple colors, and it works only in debug mode, makeing it perfect for pros.


## Getting started
### Installing
Add the following to your pubspec.yaml file:

```yaml
dependencies:
  pretty_logger: any
```

Import the package.
```dart
import 'package:pretty_logger/pretty_logger.dart';
```



## Usage

```dart

void main() {
  PLog.info('Hello buddy');
  PLog.success('Welcome');
  PLog.warning('I am a bad man. Be careful');
  PLog.error('Ops. We ran into some trouble');

  PLog.black('black');
  PLog.red('red');
  PLog.white('white');
  PLog.cyan('cyan');
  PLog.green('green');
  PLog.yellow('yellow');

  runApp(const MyApp());
}
```

## Supported functions

Main function
| Function usage | Output Color |
|--|--|
|`PLog.info('Hello buddy');`|Blue|
|`PLog.success('Welcome');`|Green|
|`PLog.warning('Be careful');`|Yellow|
|`PLog.error('Ops. trouble')`|Red|

Additional colors
| Function usage | Output Color |
|--|--|
|`PLog.black('black');`|Black|
|`PLog.red('red');`|Red|
|`PLog.white('white');`|White|
|`PLog.cyan('cyan');`|Cyan|
|`PLog.green('green');`|Green|
|`PLog.yellow('yellow');`|Yellow|
|`PLog.blue('Blue');`|Blue|
