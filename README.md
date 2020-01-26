# flutter_mobx_helpers

A set of tools for MobX.

## Install

edit your pubspec.yaml file
```
dependencies:
    flutter_mobx_helpers:
```

## Tools

### ObservableListener

Use this widget to have a response that can perform actions on the business rule such as opening another screen or calling a SnackBar/Dialog.

```dart
ObserverListener(
    listener: (_) {
        var snack = SnackBar(content: Text('Click ${store.value}'));
        _scaffold.currentState.showSnackBar(snack);
    },
    child: RaisedButton(
        child: Text('Call Snackbar'),
        onPressed: store.setValue,
    ),
)

```

## Contributions

Do you have any idea of ​​a widget or utility to add to this help? Submit a pull request to this package's repository. We look forward to it!