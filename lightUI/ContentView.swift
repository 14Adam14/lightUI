
import SwiftUI
import AVFoundation


var player: AVAudioPlayer!


struct ContentView: View {
    
//    @Environment(\.verticalSizeClass) var verticalSizeClass: UserInterfaceSizeClass?
//    @Environment(\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?
    
    
    
    
    @State var redLightShadow: Double = 0
    @State var yellowLightShadow: Double = 0
    @State var greenLightShadow: Double = 0
    
    @State var redLightOpacity: Double = 0.1
    @State var greenLightOpacity: Double = 0.1
    @State var yellowLightOpacity: Double = 0.1
    
    let generator = UINotificationFeedbackGenerator()
    
    
    /*
     
     
     скорректировать верстку что бы адаптировалась под айфон 7,8
     
     
     убрать логику и тд из тела и возможно в отдельный файл
     
     
     
     
     
     на будущее
     посмотреть как можно добавлять 3д или около 3д графику в прил юай
     
     
     
     
     */
    
    
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .background(Color.black)
                .ignoresSafeArea()
            
                
            
            VStack(spacing: 90) {
                
                VStack(spacing: 30) {
                    
                    
                    Circle()
                        .frame(minWidth: 50, idealWidth: 150, maxWidth: 160, minHeight: 50, idealHeight: 150, maxHeight: 160)
                        .foregroundColor(.red)
                        .blur(radius: 2)
                        .shadow(color: .red, radius: redLightShadow)
                        .opacity(redLightOpacity)
                    
                    
                    Circle()
                        .frame(minWidth: 50, idealWidth: 150, maxWidth: 160, minHeight: 50, idealHeight: 150, maxHeight: 160)
                        .foregroundColor(.yellow)
                        .blur(radius: 2)
                        .shadow(color: .yellow, radius: yellowLightShadow)
                        .opacity(yellowLightOpacity)
                    
                    
                    Circle()
                        .frame(minWidth: 50, idealWidth: 150, maxWidth: 160, minHeight: 50, idealHeight: 150, maxHeight: 160)
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
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 35)
                            .frame(
                                minWidth: 100,
                                idealWidth: 170,
                                maxWidth: 175,
                                minHeight: 45,
                                idealHeight: 115,
                                maxHeight: 120
                              
                            )
                            .foregroundColor(Color("buttonPurp"))
                        .shadow(color: (Color("buttonPurp")), radius: 5)
                    
                        
                            RoundedRectangle(cornerRadius: 25)
                                    .frame(
                                        minWidth: 90,
                                        idealWidth: 120,
                                        maxWidth: 125,
                                        minHeight: 50,
                                        idealHeight: 80,
                                        maxHeight: 85
                                        
                                      
                                    )
                                    .foregroundColor(.black)
                                    .shadow(color: .black, radius: 5)
                                    
                    }
                    .padding(.bottom, 30)
                    
                }
                
                
            }
        }
   
        
    }
    
    
    func switchColors() {
        
        if redLightOpacity == 0.1 && greenLightOpacity == 0.1 && yellowLightOpacity == 0.1 {
           
            redLightOpacity = 1
            yellowLightOpacity = 0.1
            greenLightOpacity = 0.1
            
            redLightShadow = 11
            yellowLightShadow = 0
            greenLightShadow = 0
            
            
            
        } else if redLightOpacity == 1 && greenLightOpacity == 0.1 && yellowLightOpacity == 0.1 {
            
            redLightOpacity = 0.1
            yellowLightOpacity = 1
            greenLightOpacity = 0.1
            
            
            redLightShadow = 0
            yellowLightShadow = 11
            greenLightShadow = 0
            
            
            
        } else if redLightOpacity == 0.1 && greenLightOpacity == 0.1 && yellowLightOpacity == 1 {
            
            redLightOpacity = 0.1
            yellowLightOpacity = 0.1
            greenLightOpacity = 1
            
            redLightShadow = 0
            yellowLightShadow = 0
            greenLightShadow = 11
            
            
            
        } else if redLightOpacity == 0.1 && greenLightOpacity == 1 && yellowLightOpacity == 0.1 {
            
            redLightOpacity = 1
            yellowLightOpacity = 0.1
            greenLightOpacity = 0.1
            
            redLightShadow = 11
            yellowLightShadow = 0
            greenLightShadow = 0
            
        } else {
            print ("dsad")
        }
        
        
    }
}
    
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13")
        ContentView()
            .previewDevice("iPhone 8")
    }
}

