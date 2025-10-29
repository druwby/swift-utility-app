//
//  FeatureCard.swift
//  ChatPrototype
//
//  Created by Drew Butler on 10/6/25.
//

import SwiftUI

struct FeatureCard: View {
    let iconName: String
    let description: String

    
    var body: some View {
        HStack{
            Image(systemName: iconName)
                .font(.largeTitle)
                .frame(width: 50, height: 50)
                .padding(.trailing)
            
            Text(description)
            
            Spacer()
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.tint)
                .opacity(0.30)
                .brightness(-0.6)
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    FeatureCard(iconName: "suit.heart.fill", description: "Some words that would describe the image to the left. Right now it's a heart.")
}
