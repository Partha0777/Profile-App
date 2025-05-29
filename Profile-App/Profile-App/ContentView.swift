import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("profileBg").resizable().edgesIgnoringSafeArea(.all)
            VStack{
                VStack(alignment: .center, spacing: 12) {
                    Image("profileImage").resizable()
                        .frame(width: 180, height: 180)
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .shadow(color: .red, radius: 5, x: 4, y:4)
                    Text("Partha").font(.system(size: 28, weight: Font.Weight.bold)).foregroundColor(Color.white)
                        .shadow(radius: 4, x: 4, y: 4)
                
                    Text("Mobile App Engineer").font(.system(size: 18, weight: Font.Weight.regular)).foregroundColor(Color.white)
                        .shadow(radius: 4, x: 4, y: 4)
                    
                    Text("").font(.system(size: 28, weight: Font.Weight.bold)).foregroundColor(Color.white)
                        .shadow(radius: 4, x: 4, y: 4)
                    
                    Text("").font(.system(size: 28, weight: Font.Weight.bold)).foregroundColor(Color.white)
                        .shadow(radius: 4, x: 4, y: 4)
                    
                    contact
                    
                    Spacer()
               }
            }
        }
    }
    
    var contact: some View{
        HStack(spacing:40){
            
            Image(systemName: "heart.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Image(systemName: "network")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Image(systemName: "message.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Image(systemName: "phone.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
    
        }.foregroundColor(.white)
            .shadow(color: .red, radius: 5,x: 5, y: 5)
            .frame(width: 250)
    }
}



#Preview {
    ContentView()
}
