//
//  ContentView.swift
//  ChatPrototype
//
//  Created by Drew Butler on 9/29/25.
//

import SwiftUI

let GradientColors: [Color] = [
.gradientTop,
.gradientBottom
]

struct ContentView:
    View {
    var body: some View {
        TabView {
            WelcomePage()
            FeaturesPage()
        }
        .background(Gradient(colors: GradientColors))
        .tabViewStyle(.page)
        .foregroundStyle(.white)
    }
}

#Preview {
    ContentView()
}

