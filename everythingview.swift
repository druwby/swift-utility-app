//
//  ContentView.swift
//  ChatPrototype
//
//  Created by Drew Butler on 9/29/25.
//

import SwiftUI

struct everythingview:
    View {
    var body: some View {
        TabView {
            WelcomePage()
            FeaturesPage()
            WeatherForecast()
            ChatPrototype()
            DiceRoller()
            PickAPalView()
            ScoreTrackerView()
        }
        .background(Gradient(colors: GradientColors))
        .tabViewStyle(.page)
    }
}

#Preview {
    everythingview()
}

