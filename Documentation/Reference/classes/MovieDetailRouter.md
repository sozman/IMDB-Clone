**CLASS**

# `MovieDetailRouter`

```swift
class MovieDetailRouter: MovieDetailRouterInterface
```

Listens from the about which screen to present and executes that.

## Properties
### `viewController`

```swift
weak var viewController: UIViewController?
```

Module's View Controller

## Methods
### `createModule(movie:)`

```swift
static func createModule(movie: SearchResponse?) -> UIViewController
```

Setup Modules classes and viewController
- returns: UIViewController
- Parameter movie: Movie Details

#### Parameters

| Name | Description |
| ---- | ----------- |
| movie | Movie Details |