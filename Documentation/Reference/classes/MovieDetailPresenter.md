**CLASS**

# `MovieDetailPresenter`

```swift
class MovieDetailPresenter: MovieDetailPresenterInterface
```

All presentation logic

## Properties
### `view`

```swift
weak var view: MovieDetailViewInterface?
```

Any representation of information on graphical interface

### `interactor`

```swift
var interactor: MovieDetailInteractorInterface?
```

Business Logic

### `router`

```swift
var router: MovieDetailRouterInterface?
```

Handles navigation between screens

### `movie`

```swift
var movie: SearchResponse?
```

Movie
