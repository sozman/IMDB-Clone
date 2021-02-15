**PROTOCOL**

# `SearchRouterInterface`

```swift
protocol SearchRouterInterface: class
```

Listens from the about which screen to present and executes that.

## Properties
### `viewController`

```swift
var viewController: UIViewController?
```

Module's View Controller

## Methods
### `createModule()`

```swift
static func createModule() -> UIViewController
```

Setup Modules classes and viewController
- returns: UIViewController

### `setupMovieDetail(movie:)`

```swift
func setupMovieDetail(movie: SearchResponse)
```

Setup And Pushing Movie Detail Page
- Parameter movie: Movie Detail

#### Parameters

| Name | Description |
| ---- | ----------- |
| movie | Movie Detail |