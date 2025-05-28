import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("profileBg").resizable().edgesIgnoringSafeArea(.all)
            VStack{
                VStack(alignment: .center,spacing:20) {
                    Image("profileImage").resizable()
                        .frame(width: 180, height: 180)
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .shadow(color: .red, radius: 5, x: 4, y:4)
               }
            }
        }
    }
}



#Preview {
    ContentView()
}
