import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        sender.alpha=0.5
        playSound(fileName: sender.currentTitle!)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            sender.alpha=1
        }
    }
    
    func playSound(fileName:String="C") {
        let url = Bundle.main.url(forResource: fileName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
