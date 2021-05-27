//
//  NextView.swift
//  UI-209
//
//  Created by にゃんにゃん丸 on 2021/05/27.
//

import SwiftUI

struct NextView: View {
    
    @State var number : Int = 0
    var body: some View {
        VStack{
            
            Spacer()
            
            if number == 0{
                
                Text("TAP")
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                
            }
            
            if number == 1{
                
                
                Image("p1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(20)
                
            }
            if number == 2{
                
                
                Image("p2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(20)
                
            }
            
            if number == 3{
                
                
                Image("p3")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(20)
                
            }
            
            
            
            Button(action: {
                
                var count = 0
                
                
                repeat{
                    
                    count = Int.random(in: 1...3)
                    
                    
                    
                }while number == count
                
                number = count
                
                
                
            }, label: {
                Text("RADOM")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.pink)
                    .shadow(color: .white, radius: 5, x: 5, y: 5)
                    .shadow(color: .white, radius: 5, x: -5, y: -5)
            })
            .padding(.top,10)
            
            
            
            
        }
        .preferredColorScheme(.dark)
    }
}

struct NextView_Previews: PreviewProvider {
    static var previews: some View {
        NextView()
    }
}
