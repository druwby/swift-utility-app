//
//  DiceRoller.swift
//  ChatPrototype
//
//  Created by Drew Butler on 10/8/25.
//

import SwiftUI

struct DiceRoller: View {
    @State private var dice: [Int] = [1]
    @State private var dicesum: Int = 1
    
    func updatesum() {
        dicesum = dice.reduce(0, +)
    }
    
    var body: some View {
        VStack {
            Text("Dice Roller")
                .font(.largeTitle
                    .lowercaseSmallCaps()
                    .bold()
                    .width(.expanded)
                )
                .foregroundStyle(.white)
            Text("Dice Total: \(dicesum)")
            HStack{
                ForEach(dice.indices, id: \.self) { index in DieView(numberofPips: $dice[index])
                }
            }
            .onChange(of: dice, { oldValue, newValue in
                updatesum()
            })
            .frame(height: 150)
            HStack{
                Button("Remove Die", systemImage: "minus.circle.fill") {
                    withAnimation {
                        if dice.count > 1 {
                            dice.removeLast()
                            updatesum()
                        }
                    }
                }
                .labelStyle(.iconOnly)
                .disabled(dice.count == 1)
                Button("Add Die", systemImage: "plus.circle.fill") {
                    withAnimation {
                        if dice.count < 6 {
                            dice.append(1)
                            updatesum()
                        }
                        }
                    }
                .labelStyle(.iconOnly)

                .disabled(dice.count == 6)
            }
            .padding()
            .font(.title)
            Button("Roll All", systemImage: "dice.fill") { withAnimation {
                for i in dice.indices {
                    dice[i] = Int.random(in: 1...6)
                }
                updatesum()
            }
                
            }
            .disabled(dice.count == 1)
            .padding()
            .font(.title)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .tint(.white)
    }
}

#Preview {
    DiceRoller()
}
