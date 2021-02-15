### `error(file:function:line:_:)`

```swift
public func error<T>(file: String = #file, function: String = #function, line: Int = #line, _ message: T)
```

Informations are added on the console by this function
- Parameters:
  - file: File name
  - function: function name
  - line: which line information
  - message: message which you write

#### Parameters

| Name | Description |
| ---- | ----------- |
| file | File name |
| function | function name |
| line | which line information |
| message | message which you write |