//
//  ContentView.swift
//  Shared
//
//  Created by KIRILL SIMAGIN on 09/07/2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
//        GradientedText(text: "Russia")
        
        RollButtonContent()
    }
}

struct GradientedText: View {
    let text: String
    var body: some View {
        Text(text)
            .frame(height:300)
            .padding()
            .foregroundColor(.white)
            .font(.largeTitle)
            .background(
                LinearGradient(gradient: Gradient(colors: [.red, .blue, .white]), startPoint: .top, endPoint: .bottom)
            )
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
