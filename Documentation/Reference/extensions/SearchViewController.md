**EXTENSION**

# `SearchViewController`
```swift
extension SearchViewController: SearchViewInterface
```

## Methods
### `updateView()`

```swift
func updateView()
```

Update View Trigger

### `showLoading()`

```swift
func showLoading()
```

Show Loading

### `hideLoading()`

```swift
func hideLoading()
```

Hide Loading

### `textFieldDidBeginEditing(_:)`

```swift
func textFieldDidBeginEditing(_ textField: UITextField)
```

Tells the delegate when editing begins in the specified text field.
- Parameter textField: The text field in which an editing session began.

#### Parameters

| Name | Description |
| ---- | ----------- |
| textField | The text field in which an editing session began. |

### `textFieldDidEndEditing(_:)`

```swift
func textFieldDidEndEditing(_ textField: UITextField)
```

Tells the delegate when editing stops for the specified text field.
- Parameter textField: The text field for which editing ended.

#### Parameters

| Name | Description |
| ---- | ----------- |
| textField | The text field for which editing ended. |

### `textFieldShouldReturn(_:)`

```swift
func textFieldShouldReturn(_ textField: UITextField) -> Bool
```

Asks the delegate whether to process the pressing of the Return button for the text field.
- Parameter textField: The text field whose return button was pressed.
- Returns: true if the text field should implement its default behavior for the return button; otherwise, false.

#### Parameters

| Name | Description |
| ---- | ----------- |
| textField | The text field whose return button was pressed. |