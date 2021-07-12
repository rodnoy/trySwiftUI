//
//  DetailView.swift
//  DemoApp
//
//  Created by KIRILL SIMAGIN on 08/07/2021.
//

import SwiftUI

struct DetailView: View {
    let currentCategory: Categories
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(currentCategory: .burger)
    }
}
