**CLASS**

# `WebService`

```swift
class WebService
```

## Methods
### `searchMovie(movieName:completion:)`

```swift
static func searchMovie(movieName name: String, completion: @escaping (SearchResponse?) -> ())
```

Search Movie with name on the OMDB API
- Parameters:
  - name: Movie Name
  - completion: Parsed JSON File via Search Response Model
- Returns: Void Function

#### Parameters

| Name | Description |
| ---- | ----------- |
| name | Movie Name |
| completion | Parsed JSON File via Search Response Model |