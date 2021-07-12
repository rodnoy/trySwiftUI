//
//  UsernameTextField.swift
//  DemoApp
//
//  Created by KIRILL SIMAGIN on 09/07/2021.
//

import SwiftUI

struct UsernameTextField: View {
    @Binding var username: String
    var body: some View {
        TextField("Username", text: $username)
            .padding()
            .background(Color("LightGray"))
            .cornerRadius(5)
            .padding(.bottom, 20)
            .textFieldStyle(PlainTextFieldStyle())
    }
}
struct BindingViewExamplePreviewContainer_2 : View {
     @State
     private var value = ""

     var body: some View {
        UsernameTextField(username: $value)
     }
}
struct UsernameTextField_Previews: PreviewProvider {
    static var previews: some View {
        UsernameTextField(username: .constant(""))
    }
}
