**EXTENSION**

# `String`
```swift
extension String
```

## Properties
### `bool`

```swift
var bool: Bool
```

String to Bool

### `floatValue`

```swift
var floatValue: Float
```

Float to string

### `doubleValue`

```swift
var doubleValue: Double
```

Double to string

### `length`

```swift
var length: Int
```

String lenght

### `isBackspace`

```swift
var isBackspace: Bool
```

Remove back space

### `html2AttributedString`

```swift
var html2AttributedString: NSAttributedString?
```

Html String to NSAttributed Text

### `html2String`

```swift
var html2String: String
```

Html to String

## Methods
### `init(absoluteURLStringWithPercentEscapedPath:)`

```swift
init(absoluteURLStringWithPercentEscapedPath path: String)
```

Declaration
- Parameter path: Path

#### Parameters

| Name | Description |
| ---- | ----------- |
| path | Path |

### `isValidEmail()`

```swift
func isValidEmail() -> Bool
```

Email Control with regex
- Returns: is email valid

### `url()`

```swift
func url() -> URL?
```

String to URL Converter
- Returns: URL

### `substring(fromIndex:)`

```swift
func substring(fromIndex: Int) -> String
```

### `substring(toIndex:)`

```swift
func substring(toIndex: Int) -> String
```

### `dateValue(_:)`

```swift
func dateValue(_ format: String = "yyyy-MM-dd'T'HH:mm:ssZ") -> Date
```

String to Date
- Parameter format: format type
- Returns: Date

#### Parameters

| Name | Description |
| ---- | ----------- |
| format | format type |

### `dateValueGregorian()`

```swift
func dateValueGregorian() -> Date
```

String to date via europe standart
- Returns: Date

### `isValid(regex:)`

```swift
func isValid(regex: RegularExpressions) -> Bool
```

Regex validation via regular expressions type
- Parameter regex: RegularExpressions
- Returns: Regex valid status

#### Parameters

| Name | Description |
| ---- | ----------- |
| regex | RegularExpressions |

### `isValid(regex:)`

```swift
func isValid(regex: String) -> Bool
```

Custom regex validation
- Parameter regex: Regex standart
- Returns: Regex valid status

#### Parameters

| Name | Description |
| ---- | ----------- |
| regex | Regex standart |

### `onlyDigits()`

```swift
func onlyDigits() -> String
```

Number filter
- Returns: Only numbers
