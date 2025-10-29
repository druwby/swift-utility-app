//
//  FeaturesPage.swift
//  ChatPrototype
//
//  Created by Drew Butler on 10/6/25.
//

import SwiftUI

struct FeaturesPage: View {
    var body: some View {
        VStack {
            Text("Features")
                .font(.title)
                .fontWidth(.expanded)
                .padding(.bottom)
            
            FeatureCard(iconName: "figure.wave", description: "The welcome page you saw when you opened the app was the first step.")
            
            FeatureCard(iconName: "list.bullet.clipboard.fill", description: "This feature page is actually the first feature implemented!")
            
            FeatureCard(iconName: "message.fill", description: "A prototype for a messaging app like imessage.")
            
            FeatureCard(iconName: "cloud.sun.rain.fill", description: "A 5-day Weather forecast preview, nothing is actually implemented lol.")
            
            FeatureCard(iconName: "dice.fill", description: "A dice roller that supports 1-6 rollable dice and a roll sum displayed at the top.")
            
            FeatureCard(iconName: "list.number.rtl", description: "A scorekeeping list that supports adding and removing players.")
        
            FeatureCard(iconName: "pointer.arrow.motionlines", description: "The Pal-Picka -- for picking a random pal from a list. Import or Save a list, too!")
        }
        .padding()
    }
}

#Preview {
    FeaturesPage()
        .frame(maxHeight: .infinity)
                .background(Gradient(colors: GradientColors))
                .foregroundStyle(.white)
}
