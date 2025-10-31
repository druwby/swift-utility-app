//
//  DiceView.swift
//  ChatPrototype
//
//  Created by Drew Butler on 10/6/25.
//

import SwiftUI

struct DieView: View {
    @Binding var numberofPips: Int
    
    var body: some View {
        
        VStack {
            Image(systemName: "die.face.\(numberofPips).fill")
                .resizable()
                .frame(maxWidth: 200, maxHeight: 200)
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(.black, .white)
            
            Button("Roll") {
                withAnimation { numberofPips = Int.random(in: 1...6)
                }
            }
            .buttonStyle(.borderedProminent)
            .foregroundStyle(.accent)
        }
    }
}

#Preview {
    //DieView()
}
