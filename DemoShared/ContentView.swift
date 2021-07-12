//
//  ContentView.swift
//  Shared
//
//  Created by KIRILL SIMAGIN on 07/07/2021.
//

import SwiftUI

//struct ContentView: View {
//    var body: some View {
//       Text("hello")
//    }
//}
struct ContentView: View {
    @State private var completionAmount: CGFloat = 0.0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        Rectangle()
            .trim(from: 0, to: completionAmount)
            .stroke(Color.red, lineWidth: 20)
            .frame(width: 200, height: 200)
            .rotationEffect(.degrees(-90))
            .onReceive(timer) { _ in
                withAnimation {
                    if completionAmount == 1 {
                        completionAmount = 0
                    } else {
                        completionAmount += 0.2
                    }
                }
            }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
