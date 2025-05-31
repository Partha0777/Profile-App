import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ZStack{
            Image("profileBg").resizable().edgesIgnoringSafeArea(.all)
            VStack{
                profile
                Spacer()
                engagementAndAbout
            }
        }
        
    }
    
    var profile: some View{
        
        VStack(alignment: .center, spacing: 12) {
            Spacer()
            Image("profileImage").resizable()
                .frame(width: 180, height: 180)
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .shadow(color: .red, radius: 5, x: 4, y:4)
            Text("Partha").font(.system(size: 28, weight: Font.Weight.bold)).foregroundColor(Color.white)
                .shadow(radius: 4, x: 4, y: 4)
        
            Text("Mobile App Engineer").font(.system(size: 18, weight: Font.Weight.regular)).foregroundColor(Color.white)
                .shadow(radius: 4, x: 4, y: 4)
            
        
            Spacer()
           
            contact
            
            Spacer()
            
       }
        
    }

    
    var contact: some View{
        HStack(spacing:60){
            
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
            .padding(.horizontal, 30)
    }
    
    
    var engagementAndAbout : some View{
        VStack(alignment: .center, spacing: 20){
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 300, height: 50)
                .foregroundColor(.white)
                .shadow(color:.pink,radius: 5, x: 5, y:5)
                .overlay(
                    Text("Follow")
                        .foregroundColor(.pink)
                        .font(.system(size: 22, weight: .bold))
                )
            
            HStack(spacing:80){
                
                VStack(spacing: 4){
                    Text("2800").font(.system(size: 24, weight: .bold))
                    Text("Followers").opacity(0.5)
                }
                
                VStack(spacing: 4){
                    Text("535").font(.system(size: 24, weight: .bold))
                    Text("Follows").opacity(0.5)
                }
                
                VStack(spacing: 4){
                    Text("723").font(.system(size: 24, weight: .bold))
                    Text("Posts").opacity(0.5)
                }
            }
            
            VStack(spacing: 12){
                Text("About").font(.system(size: 20, weight: .bold))
                Text("iOS Developer skilled in Swift, SwiftUI, and UIKit.Experienced in building clean, scalable apps with MVVM.Focus on performance, API integration, and smooth UX.").lineSpacing(4).opacity(0.5)
            }.padding(12)
            
        }
    }
}



#Preview {
    ContentView()
}
