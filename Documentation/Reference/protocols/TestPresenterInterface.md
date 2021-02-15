**PROTOCOL**

# `TestPresenterInterface`

```swift
protocol TestPresenterInterface: class
```

All presentation logic interface

## Properties
### `view`

```swift
var view: TestViewInterface?
```

Any representation of information on graphical interface

### `interactor`

```swift
var interactor: TestInteractorInterface?
```

Business Logic

### `router`

```swift
var router: TestRouterInterface?
```

Handles navigation between screens
