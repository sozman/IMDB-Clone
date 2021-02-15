**CLASS**

# `JSON`

```swift
class JSON
```

Json Helper

## Properties
### `decoder`

```swift
private let decoder = JSONDecoder()
```

Decoder for json file

### `encoder`

```swift
private let encoder = JSONEncoder()
```

Encoder for object

## Methods
### `init()`

```swift
init()
```

Declaration

### `decode(_:from:)`

```swift
func decode<T>(_ type: T.Type, from data: Data) throws -> T where T: Decodable
```

Decode Json file
- Parameters:
  - type: Model type
  - data: Json File
- Throws: Error type
- Returns: Object which is wanted

#### Parameters

| Name | Description |
| ---- | ----------- |
| type | Model type |
| data | Json File |

### `encode(_:)`

```swift
func encode<T>(_ value: T) throws -> Data where T: Encodable
```

Encode object
- Parameter value: Object
- Throws: Error Type
- Returns: Json string

#### Parameters

| Name | Description |
| ---- | ----------- |
| value | Object |