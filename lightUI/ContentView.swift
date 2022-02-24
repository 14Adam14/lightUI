
import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack(spacing: 90) {

            
            VStack(spacing: 30) {
                Circle()
                    .frame(width: 150, height: 150)
                    .foregroundColor(.red)
                Circle()
                        .frame(width: 150, height: 150)
                        .foregroundColor(.yellow)
                Circle()
                        .frame(width: 150, height: 150)
                        .foregroundColor(.green)
            }
         
            
            
            Button {
                //
            } label: {
               
                    RoundedRectangle(cornerRadius: 35)
                        .frame(width: 170, height: 115)
                        .foregroundColor(.black)
                        .overlay(RoundedRectangle(cornerRadius: 25)
                                    .frame(width: 120, height: 80)
                                    .foregroundColor(.gray))
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


