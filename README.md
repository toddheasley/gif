# `AnimatedGIF`

Extends [`UIImage`](https://developer.apple.com/documentation/uikit/uiimage) to support GIF animation

## Requirements

Targets [iOS](https://developer.apple.com/ios)/[iPadOS](https://developer.apple.com/ipad)/[tvOS ](https://developer.apple.com/tvos) 14. Written in [Swift](https://developer.apple.com/documentation/swift) 5.3 and requires [Xcode](https://developer.apple.com/xcode) 12 or newer to build.

## Example Usage

The added factory `UIImage.animatedImage(data: Data)` can be used as a replacement for `UIImage(data: Data)` where GIF animation is desired; data not recognized as an animated GIF is delegated to `UIImage(data: Data)`.

```swift
import UIKit
import AnimatedGIF

let imageView: UIImageView = UIImageView()
imageView.image = .animatedImage(data: gifData)
imageView.image = .animatedImage(data: jpegData)
```

By default, GIF playback behavior mimics WebKit, clamping delay between frames to a minimum of 100 milliseconds. Certain GIFs may require a custom clamp value to achieve reasonable playback speed:

```swift
import UIKit
import AnimatedGIF

let imageView: UIImageView = UIImageView()
imageView.image = .animatedImage(data: data, behavior: .unclamped) // The truth
imageView.image = .animatedImage(data: data, behavior: .clamped(0.25)) // Clamp animation frames to custom minimum delay time
imageView.image = .animatedImage(data: data, behavior: .webkit) // Default: .clamped(0.1)
```
