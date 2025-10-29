//
//  ChatPrototype.swift
//  ChatPrototype
//
//  Created by Drew Butler on 10/6/25.
//

import SwiftUI

struct ChatPrototype: View {
    var body: some View {
        VStack{
            Spacer()
            HStack {
                Spacer()
                Text("Hello, world!")
                    .foregroundStyle(.white)
                    .padding()
                    .background(.gradientBottom, in: RoundedRectangle(cornerRadius: 35))
                    .shadow(radius: 5)
                    .padding()
            }
            
            HStack {
                Text("Goodbye cruel world")
                    .foregroundStyle(.white)
                    .padding()
                    .background(.bgdarkcolor, in:RoundedRectangle(cornerRadius: 35))
                    .shadow(radius: 5)
                    .padding()
                Spacer()
            }
            Spacer()
        }
    }
}

#Preview {
    ChatPrototype()
}
