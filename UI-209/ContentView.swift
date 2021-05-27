//
//  ContentView.swift
//  UI-209
//
//  Created by にゃんにゃん丸 on 2021/05/27.
//

import SwiftUI

struct ContentView: View {
    @State var title = "A"
    @State var show = false
    var body: some View {
        NavigationView{
            
            VStack{
                
                
              Text(title)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.primary)
                
                
                HStack{
                    
                    Button(action: {
                        
                        withAnimation{
                            
                            title = "B"
                            
                            
                        }
                        
                        
                    }, label: {
                        Text("Tap")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.green)
                    })
                    
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 1, height:30)
                    
                    Button(action: {
                        show.toggle()
                    }, label: {
                        Text("Next")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                            
                    })
                }
                .offset(x: -3, y: -5)
                .padding([.horizontal,.top])
                .padding(.vertical,12)
                .background(
                
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white,lineWidth: 3)
                
                )
                
                
            }
            .preferredColorScheme(.dark)
            .sheet(isPresented: $show, content: {
                NextView()
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


