
import SwiftUI





struct ContentView: View {
    
    @State var shadowToggle: Bool = false
    
    
    
    
    
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
                        .shadow(color: .red, radius: 11)
                    
                    Circle()
                        .frame(width: 150, height: 150)
                        .foregroundColor(.yellow)
                        .blur(radius: 2)
                        .shadow(color: .yellow, radius: 0)
                    
                        .opacity(0.1)
                    
                    Circle()
                        .frame(width: 150, height: 150)
                        .foregroundColor(.green)
                        .blur(radius: 2)
                        .shadow(color: .green, radius: 0)    // radius 11
                    
                        .opacity(0.1)
                }
                
                
                
                Button {
                    pr()
                } label: {
                    
                    RoundedRectangle(cornerRadius: 35)
                        .frame(width: 170, height: 115)
                        .foregroundColor(.orange)
                        .overlay(RoundedRectangle(cornerRadius: 25)
                                    .frame(width: 120, height: 80)
                                    .foregroundColor(.gray))
                }
                
            }
        }
    }
    
    
    func pr() {
        print("fdwsfw")
    }
    
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


