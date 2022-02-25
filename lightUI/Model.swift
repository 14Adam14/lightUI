
import AVFoundation
import SwiftUI



//struct Model {
//
//
//     var redLightShadow: Double = 0
//     var yellowLightShadow: Double = 0
//     var greenLightShadow: Double = 0
//
//     var redLightOpacity: Double = 0.1
//     var greenLightOpacity: Double = 0.1
//     var yellowLightOpacity: Double = 0.1
//
//
//    mutating func switchColors() {
//
//        if redLightOpacity == 0.1 && greenLightOpacity == 0.1 && yellowLightOpacity == 0.1 {
//
//            redLightOpacity = 1
//            yellowLightOpacity = 0.1
//            greenLightOpacity = 0.1
//
//            redLightShadow = 11
//            yellowLightShadow = 0
//            greenLightShadow = 0
//
//
//
//        } else if redLightOpacity == 1 && greenLightOpacity == 0.1 && yellowLightOpacity == 0.1 {
//
//            redLightOpacity = 0.1
//            yellowLightOpacity = 1
//            greenLightOpacity = 0.1
//
//
//            redLightShadow = 0
//            yellowLightShadow = 11
//            greenLightShadow = 0
//
//
//
//        } else if redLightOpacity == 0.1 && greenLightOpacity == 0.1 && yellowLightOpacity == 1 {
//
//            redLightOpacity = 0.1
//            yellowLightOpacity = 0.1
//            greenLightOpacity = 1
//
//            redLightShadow = 0
//            yellowLightShadow = 0
//            greenLightShadow = 11
//
//
//
//        } else if redLightOpacity == 0.1 && greenLightOpacity == 1 && yellowLightOpacity == 0.1 {
//
//            redLightOpacity = 1
//            yellowLightOpacity = 0.1
//            greenLightOpacity = 0.1
//
//            redLightShadow = 11
//            yellowLightShadow = 0
//            greenLightShadow = 0
//
//        } else {
//            print ("dsad")
//        }
//
//
//    }
//}
    
    
    
    
    








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
