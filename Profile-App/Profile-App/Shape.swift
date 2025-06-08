//
//  Shape.swift
//  Profile-App
//
//  Created by Partha on 05/06/25.
//

import SwiftUICore
import SwiftUI

struct ShapeView: View{
    
    @State var data : String = ""
    var listOfNames = ["Partha", "Kan", "Rock"]
    
    
    var body: some View {
        VStack{
            HexoShape().fill().frame(width: 200, height: 200).foregroundColor(.brown).overlay(content: {
                Text(data)
            })
            Button(action:{
                var radomName = listOfNames.randomElement() ?? "Nothing"
                data = radomName
            }){
                Text("Click Me")
            }
        }
    }

}

struct HexoShape: Shape{
    
    func path(in rect: CGRect) -> Path{
        return Path{path in
            
            let p1 = CGPoint(x: 0, y: 40)
            let p2 = CGPoint(x: 0, y: rect.height - 40)
            let p3 = CGPoint(x: rect.width / 2, y: rect.height)
            let p4 = CGPoint(x: rect.width, y: rect.height - 40)
            let p5 = CGPoint(x: rect.width, y: 40)
            let p6 = CGPoint(x: rect.width/2, y: 0)
            
            
            path.move(to: p6)
            
            path.addArc(tangent1End: p1, tangent2End: p2, radius: 5)
            path.addArc(tangent1End: p2, tangent2End: p3, radius: 5)
            path.addArc(tangent1End: p3, tangent2End: p4, radius: 5)
            path.addArc(tangent1End: p4, tangent2End: p5, radius: 5)
            path.addArc(tangent1End: p5, tangent2End: p6, radius: 5)
            path.addArc(tangent1End: p6, tangent2End: p1, radius: 5)
            
        }
    }
    
}








