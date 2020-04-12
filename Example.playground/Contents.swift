import UIKit
import PlaygroundSupport

class ViewController: UIViewController {
    override func loadView() {
        super.loadView()
        
        let data: Data = try! Data(contentsOf: Bundle.main.url(forResource: "Pong", withExtension: "gif")!)
        
        let view: UIImageView = UIImageView(image: UIImage.animatedImage(data: data))
        view.contentMode = .scaleAspectFit
        view.backgroundColor = .black
        view.frame = view.frame
        self.view = view
    }
}

PlaygroundPage.current.liveView = ViewController()
