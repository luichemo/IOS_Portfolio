import UIKit
import AudioToolbox

class ViewController: UIViewController {

    @IBOutlet weak var ballImageView: UIImageView!
    
    let ballImages: [UIImage] = [
        UIImage(named: "ball1.png")!,
        UIImage(named: "ball2.png")!,
        UIImage(named: "ball3.png")!,
        UIImage(named: "ball4.png")!,
        UIImage(named: "ball5.png")!,
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        }
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            shakeBall()
        }
    }
    
    func shakeBall() {
        ballImageView.image = ballImages.randomElement()
    }
}
