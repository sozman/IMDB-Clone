**CLASS**

# `SearchTableViewControllerItemCell`

```swift
class SearchTableViewControllerItemCell: UITableViewCell
```

## Properties
### `posterImageView`

```swift
@IBOutlet weak var posterImageView: UIImageView!
```

Poster Image View

### `rateBoxView`

```swift
@IBOutlet weak var rateBoxView: UIView!
```

IMDB Rate View

### `rateLabel`

```swift
@IBOutlet weak var rateLabel: UILabel!
```

IMDB Rate Label

### `nameLabel`

```swift
@IBOutlet weak var nameLabel: UILabel!
```

Movie Name Label

### `typeLabel`

```swift
@IBOutlet weak var typeLabel: UILabel!
```

Movie Type Label

### `descriptionLabel`

```swift
@IBOutlet weak var descriptionLabel: UILabel!
```

Description Label

### `model`

```swift
var model: MovieItemModel?
```

Data

## Methods
### `awakeFromNib()`

```swift
override func awakeFromNib()
```

Decleration

### `setupUI()`

```swift
func setupUI()
```

Setup User Interface

### `downloadImagePoster()`

```swift
private func downloadImagePoster()
```

Download Image Poster
