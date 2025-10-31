//
//  ScoreTrackerView.swift
//  ChatPrototype
//
//  Created by Drew Butler on 10/14/25.
//

import SwiftUI

struct ScoreTrackerView: View {
    @State private var players: [Player] = [
        Player(name: "Drew", score: 7),
        Player(name: "Marinah", score: -2),
        Player(name: "Ningh", score: 0)
    ]


    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Score Tracker")
                    .font(.title)
                    .bold()
                    .padding(.bottom)
                    .fontWidth(.expanded)
                
                Image(systemName: "figure.handball")
                    .resizable()
                    .foregroundStyle(.tint)
                    .aspectRatio(contentMode: .fit)
                
            }
            Grid {
                
                GridRow{
                    Text("Player")
                        .gridColumnAlignment(.leading)
                    Text("Score")
                }
                .font(.headline)
                
                ForEach($players) { $player in
                    GridRow {
                        TextField("Name", text: $player.name)
                        Text("\(player.score)")
                        Stepper("\(player.score)", value: $player.score)
                            .labelsHidden()
                    }
                }
            }
            .padding(.vertical)
            Button("Add Player", systemImage: "plus") {
                players.append(Player(name: "", score: 0))
            }

            Spacer()
        }
        .padding()
    }
}


#Preview {
    ScoreTrackerView()
}
