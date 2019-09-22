//
//  ContentView.swift
//  UnderstatndingAnchorPointPositioning
//
//  Created by ramil on 22/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var rotaAtAnchor = false
    
    var body: some View {
        ZStack {
            Divider()
            Divider().offset(y: 25)
            Divider().offset(y: -25)
            Divider().rotationEffect(.degrees(90))
            Divider().rotationEffect(.degrees(90)).offset(x: 25)
            Divider().rotationEffect(.degrees(90)).offset(x: -25)
            
            Group {
                Rectangle()
                .frame(width: 50, height: 50)
                    .foregroundColor(.blue)
                    .rotationEffect(.degrees(rotaAtAnchor ? 0 : 180), anchor: .center)  // Anchor position
                    .animation(Animation.spring().repeatForever(autoreverses: true))
                    .onAppear() {
                        self.rotaAtAnchor.toggle()
                }
                
                Circle()
                .frame(width: 10, height: 10)
                    .foregroundColor(.orange)
                    .offset(x: 0, y: 0)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
