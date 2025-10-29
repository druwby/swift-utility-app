//
//  SwiftUIView.swift
//  ChatPrototype
//
//  Created by Drew Butler on 10/6/25.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .frame(width:205)
                    .foregroundStyle(.bgdarkcolor)
                Circle()
                    .frame(width:200)
                    .foregroundStyle(.tint)
                    .padding()
                    .shadow(radius: 10)
                Image(systemName: "apple.writing.tools")
                    .font(.system(size: 120))
                    .foregroundStyle(.fgcolor)
            }
            
            Text("Welcome!")
                .font(.title)
                .fontWeight(.semibold)
                .fontWidth(.expanded)
                .foregroundStyle(.fgcolor)
                .padding(10)
                .background(.accent)
                .border(.bgdarkcolor, width:2)
            
            Text("Test out these little tools I made through tutorials!")
                .font(.title2
                    .italic())
                .foregroundStyle(.gradientTop)
                .multilineTextAlignment(.center)
                .padding(10)
                
            
        }
        .padding()
    

    }
}

#Preview {
    WelcomePage()
}
