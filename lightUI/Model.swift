
import Foundation
import AVFoundation
















func playSound() {
    let url = Bundle.main.url(forResource: "3rdParty_Start_Haptic", withExtension: "caf")
    
    guard url != nil else {
        return
    }
    
    do {
        player = try AVAudioPlayer(contentsOf: url!)
        player?.play()
        
    } catch {
        print("play error \(error)")
    }
    
}
