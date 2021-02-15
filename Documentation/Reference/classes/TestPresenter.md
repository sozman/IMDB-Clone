**CLASS**

# `TestPresenter`

```swift
class TestPresenter: TestPresenterInterface
```

All presentation logic

## Properties
### `view`

```swift
weak var view: TestViewInterface?
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
