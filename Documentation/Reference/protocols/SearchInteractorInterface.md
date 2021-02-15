**PROTOCOL**

# `SearchInteractorInterface`

```swift
protocol SearchInteractorInterface: class
```

Responsible for making data calls

## Properties
### `presenter`

```swift
var presenter: SearchInteractorDelegate?
```

Presenter Interactor Delegate

## Methods
### `getSearchResult(movieName:)`

```swift
func getSearchResult(movieName: String)
```

Get Search Result
- Parameter movieName: Movie Name

#### Parameters

| Name | Description |
| ---- | ----------- |
| movieName | Movie Name |