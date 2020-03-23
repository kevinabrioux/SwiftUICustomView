//
//  MyTextField.swift
//  SwiftUICustomView
//
//  Created by Kevin ABRIOUX on 23/03/2020.
//  Copyright © 2020 Kevin ABRIOUX. All rights reserved.
//

import SwiftUI

struct MyTextField: View {
    var placholder: String
    @Binding var value: String
    
    var body: some View {
        TextField(placholder, text: $value)
            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
            .background(Color(UIColor.secondarySystemFill))
            .cornerRadius(4)
    }
}

struct MyTextField_Previews: PreviewProvider {
    
    static var previews: some View {
        Group {
            MyTextFieldWrapper()
            
            MyTextField(placholder: "Preview", value: .constant("Const value"))
        }
    }
    
    struct MyTextFieldWrapper: View {
      @State(initialValue: "") var value: String

      var body: some View {
        MyTextField(placholder: "Preview", value: $value)
      }
    }
}


