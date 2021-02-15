**PROTOCOL**

# `SearchPresenterInterface`

```swift
protocol SearchPresenterInterface: class
```

All presentation logic interface

## Properties
### `view`

```swift
var view: SearchViewInterface?
```

Any representation of information on graphical interface

### `interactor`

```swift
var interactor: SearchInteractorInterface?
```

Business Logic

### `router`

```swift
var router: SearchRouterInterface?
```

Handles navigation between screens

### `searchResponse`

```swift
var searchResponse: [SearchResponse]?
```

Search Response

## Methods
### `fetchSearch(movieName:)`

```swift
func fetchSearch(movieName: String)
```

Fetch Search
- Parameter movieName: Movie Name

#### Parameters

| Name | Description |
| ---- | ----------- |
| movieName | Movie Name |

### `showMovieDetail(movie:)`

```swift
func showMovieDetail(movie: SearchResponse)
```

Show Movie Detail Page
- Parameter movie: Movie Detail

#### Parameters

| Name | Description |
| ---- | ----------- |
| movie | Movie Detail |