//
//  PasswordSecureField.swift
//  DemoApp
//
//  Created by KIRILL SIMAGIN on 09/07/2021.
//

import SwiftUI

struct PasswordSecureField: View {
    @Binding var password: String
    var body: some View {
        SecureField("Password", text: $password)
            .textFieldStyle(PlainTextFieldStyle())
            .padding()
            .background(Color("LightGray"))
            .cornerRadius(5)
            .padding(.bottom, 20)
        //RoundedBorderTextFieldStyle
    }
}

struct PasswordSecureField_Previews: PreviewProvider {
    static var previews: some View {
        PasswordSecureField(password: .constant(""))
    }
}
