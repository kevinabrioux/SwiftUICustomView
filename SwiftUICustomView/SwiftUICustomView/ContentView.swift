//
//  ContentView.swift
//  SwiftUICustomView
//
//  Created by Kevin ABRIOUX on 23/03/2020.
//  Copyright © 2020 Kevin ABRIOUX. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var texts = ["SwiftUI", "A new declarative UI framework", "Let us try to understand how SwiftUI renders its views"]
    
    @State var selected = 0
    @State var textFieldValue = ""
    @State var isSwitchOn = false
    
    var body: some View {
        VStack(spacing: 16) {
            MyTextField(placholder: "Enter your name", value: $textFieldValue)
            
            Toggle(isOn: $isSwitchOn, label: {
                Text("A simple Switch")
            })
            
            Picker(selection: $selected, label: Text(""), content: {
                Text("Word").tag(0)
                Text("Phrase").tag(1)
                Text("Sentence").tag(2)
            }).pickerStyle(SegmentedPickerStyle())
            
            HStack {
                Text("Sample text")
                Spacer()
                Button(action: {
                    print("just checking")
                }, label: {
                    Image(systemName: "plus.circle.fill")
                        .foregroundColor(.blue)
                })
            }
            
            
        }.padding()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
