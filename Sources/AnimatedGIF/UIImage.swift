import UIKit

extension UIImage {
    static func animatedImage(data: Data) -> UIImage? {
        guard let source: CGImageSource = CGImageSourceCreateWithData(data as CFData, nil), CGImageSourceGetCount(source) > 1 else {
            return UIImage(data: data)
        }
        
        // Collect key frames and durations
        var frames: [(image: CGImage, duration: TimeInterval)] = []
        for i: Int in 0 ..< CGImageSourceGetCount(source) {
            guard let image: CGImage = CGImageSourceCreateImageAtIndex(source, i, nil),
                let frame: [String: Any] = CGImageSourceCopyPropertiesAtIndex(source, i, nil) as? [String: Any],
                let properties: [String: Any] = frame["{GIF}"] as? [String: Any] else {
                continue
            }
            
            // Mimic WebKit approach to determine frame duration
            if let duration: TimeInterval = properties["UnclampedDelayTime"] as? TimeInterval, duration > 0.0 {
                frames.append((image, duration)) // Prefer "unclamped" duration
            } else if let duration: TimeInterval = properties["DelayTime"] as? TimeInterval, duration > 0.0 {
                frames.append((image, duration))
            } else {
                frames.append((image, 0.1)) // WebKit default
            }
        }
        
        // Convert key frames to animated image
        var images: [UIImage] = []
        var duration: TimeInterval = 0.0
        for frame in frames {
            let image = UIImage(cgImage: frame.image)
            for _ in 0 ..< Int(frame.duration * 100.0) {
                images.append(image) // Add fill frames
            }
            duration += frame.duration
        }
        return UIImage.animatedImage(with: images, duration: duration)
    }
}
