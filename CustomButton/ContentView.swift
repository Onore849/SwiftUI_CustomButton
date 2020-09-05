//
//  ContentView.swift
//  CustomButton
//
//  Created by 野澤拓己 on 2020/09/05.
//  Copyright © 2020 Takumi Nozawa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        customButton()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct customButton : View {
    
    @State var count = 0
    
    var body: some View {
        
        ZStack {
            
            Button(action: {
                
                print("Clicked")
                self.count += 1
                
            }) {
                
                Image(systemName: "bell.fill").resizable().frame(width: 30, height: 30)
            }.padding()
                .foregroundColor(Color.white)
                .background(Color.green)
                .clipShape(Circle())
            
            if count != 0 {
                
                Text("\(count)").padding(6).background(Color.red).clipShape(Circle()).foregroundColor(.white).offset(x: 17, y: -25)
                
            }
            
            
            
        }.animation(.spring())
        
        
    }
    
}
