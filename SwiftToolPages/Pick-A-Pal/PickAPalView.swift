//
//  SwiftUIView.swift
//  ChatPrototype
//
//  Created by Drew Butler on 10/8/25.
//

import SwiftUI

struct PickAPalView: View {
    @State private var names: [String] = ["Drew", "Marinah", "Shawn", "Dennis"]
    @State private var nametoadd: String = ""
    @State private var pickedname: String = ""
    @State private var removepickedname: Bool = false
    @State private var savednames: [String] = []
    
    var body: some View {
        VStack{
            VStack{
                Image(systemName: "person.3.fill")
                    .foregroundStyle(.tint)
                    .symbolRenderingMode(.hierarchical)
                Text("Pal-Picka")
                    .fontWidth(.expanded)
                    .foregroundStyle(.tint)
            }
            .font(.largeTitle)
            .bold()
            Text(pickedname.isEmpty ? " " : pickedname)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(.tint)
            List {
                ForEach(names, id: \.description) {name in
                    Text(name)
                }
                .listRowBackground(Color.accent)
                .listRowSeparatorTint(Color.fgcolor)
            }
            .foregroundStyle(.gradientTop)
            .listStyle(.plain)
            .background(Color.accent)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .frame(height: 300)
            
            TextField("Add Name", text: $nametoadd)
                .autocorrectionDisabled()
                .onSubmit {
                    nametoadd = nametoadd.trimmingCharacters(in: .whitespacesAndNewlines)
                    if !nametoadd.isEmpty {
                        if !names.contains(nametoadd) {
                            names.append(nametoadd.trimmingCharacters(in: .whitespacesAndNewlines))
                            nametoadd = ""
                        } else {
                            
                        }
                    }
                }
            
            Divider()
            
            Toggle("Remove when picked", isOn: $removepickedname)
            
            Button {
                if let randomname = names.randomElement() {
                    pickedname = randomname
                    if removepickedname {
                        withAnimation {
                            names.removeAll {name in
                                return (name == randomname)
                            }
                        }
                    }
                }else {
                    pickedname = ""
                }
            } label: {
                Text("Pick Random Name")
                    .padding(.vertical, 4)
                    .padding(.horizontal, 20)
            }
            .tint(.gradientBottom)
            .disabled(names.isEmpty)
            .buttonStyle(.borderedProminent)
            .font(.title2)
            HStack{
                Button("Save List") {
                    savednames = names
                    names = []
                }
                .buttonStyle(.borderedProminent)
                .font(.title2)
                .disabled(names == savednames)
                Button("Load List") {
                    if !savednames.isEmpty {
                        names = savednames
                    }
                }
                .disabled(names == savednames)
                .buttonStyle(.borderedProminent)
                .font(.title2)
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    PickAPalView()
}
