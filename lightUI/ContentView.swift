
import SwiftUI
import AVFoundation


var player: AVAudioPlayer!


struct ContentView: View {
    
    @State var redLightShadow: Double = 0
    @State var yellowLightShadow: Double = 0
    @State var greenLightShadow: Double = 0
    
    @State  var redLightOpacity: Double = 0.1
    @State var greenLightOpacity: Double = 0.1
    @State var yellowLightOpacity: Double = 0.1
    
    let generator = UINotificationFeedbackGenerator()
    
    
    
    let butCol: Color = Color(red: 0.6, green: 0.5647058823529412, blue: 0.7294117647058823)
    
    /*
     
     
    
     
     убрать логику и тд из тела и возможно в отдельный файл
     
    
     
     добавить звук при клике
     
     
     посмотреть как можно добавлять 3д или около 3д графику в прил юай
     
     
     
     доделать кнопку
     
     
     */
    
    
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .background(Color.black)
                .ignoresSafeArea()
            
            VStack(spacing: 90) {
                
                VStack(spacing: 30) {
                    
                    Circle()
                        .frame(width: 150, height: 150)
                        .foregroundColor(.red)
                        .blur(radius: 2)
                        .shadow(color: .red, radius: redLightShadow)
                    
                        .opacity(redLightOpacity)
                    
                    Circle()
                        .frame(width: 150, height: 150)
                        .foregroundColor(.yellow)
                        .blur(radius: 2)
                        .shadow(color: .yellow, radius: yellowLightShadow)
                    
                        .opacity(yellowLightOpacity)
                    
                    Circle()
                        .frame(width: 150, height: 150)
                        .foregroundColor(.green)
                        .blur(radius: 2)
                        .shadow(color: .green, radius: greenLightShadow)    // radius 11
                    
                        .opacity(greenLightOpacity)
                }
                
                
                
                Button {
                    switchColors()
                    self.generator.notificationOccurred(.success)
                    playSound()
           
                    
                } label: {
                    
                    RoundedRectangle(cornerRadius: 35)
                        .frame(width: 170, height: 115)
                        .foregroundColor(butCol)
                        .shadow(color: butCol, radius: 5)
                        .overlay(RoundedRectangle(cornerRadius: 25)
                                    .frame(width: 120, height: 80)
                                    .foregroundColor(.black))
                        .shadow(color: .black, radius: 5)
                }
                
            }
        }
    }
    
    
    
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
    
    
    
    
    
    
    
    func switchColors() {
    
    if redLightOpacity == 0.1 && greenLightOpacity == 0.1 && yellowLightOpacity == 0.1 {
        redLightOpacity = 1
        greenLightOpacity = 0.1
        yellowLightOpacity = 0.1
        
        redLightShadow = 11
        greenLightShadow = 0
        yellowLightShadow = 0
        
        
    } else if redLightOpacity == 1 && greenLightOpacity == 0.1 && yellowLightOpacity == 0.1 {
    
        yellowLightOpacity = 1
        greenLightOpacity = 0.1
        redLightOpacity = 0.1
        
        yellowLightShadow = 11
        greenLightShadow = 0
        redLightShadow = 0
        
        
    } else if redLightOpacity == 0.1 && greenLightOpacity == 0.1 && yellowLightOpacity == 1 {
       
        greenLightOpacity = 1
        redLightOpacity = 0.1
        yellowLightOpacity = 0.1
        
        redLightShadow = 0
        greenLightShadow = 11
        yellowLightShadow = 0
        
        
    } else if redLightOpacity == 0.1 && greenLightOpacity == 1 && yellowLightOpacity == 0.1 {
        redLightOpacity = 1
        greenLightOpacity = 0.1
        yellowLightOpacity = 0.1
        
        redLightShadow = 11
        greenLightShadow = 0
        yellowLightShadow = 0
        
    } else {
        print ("dsad")
    }
    
    
    }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

