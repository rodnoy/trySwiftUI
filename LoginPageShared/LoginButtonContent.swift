//
//  LoginButtonContent.swift
//  DemoApp
//
//  Created by KIRILL SIMAGIN on 09/07/2021.
//

import SwiftUI

struct LoginButtonContent: View {
    var body: some View {
        Text("LOGIN")
            .font(.headline)
            .foregroundColor(.white)
            .padding(10)
            .frame(width: 220, height: 60)
            .background(Color.green)
            .cornerRadius(15.0)
    }
}

struct LoginButtonContent_Previews: PreviewProvider {
    static var previews: some View {
        LoginButtonContent()
    }
}
