//
//  RollButtonContent.swift
//  DemoApp
//
//  Created by KIRILL SIMAGIN on 09/07/2021.
//

import SwiftUI

struct RollButtonContent: View {
    @State var rolledNumber = 1
    @State var rolledIt = false
    var body: some View {
        VStack {
            Image(rolledIt ? "\(rolledNumber)" : "unknown")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .clipped()
                .padding(.top, 250)
            Spacer()
            Button(action: {
                    
                let randomNumber = Int.random(in: 1 ..< 7)
                print("Dice rolled. number is \(randomNumber)")
                rolledNumber = randomNumber
                rolledIt = true
                }) {
                    Text("Roll the dice")
                        .frame(width: 240, height: 75)
                        .foregroundColor(.white)
                        .font(.headline)
                        .background(Color.orange)
                        .cornerRadius(20)
                }
            .buttonStyle(PlainButtonStyle())
            .padding(.bottom, 40)
        }
    }
}

struct RollButtonContent_Previews: PreviewProvider {
    static var previews: some View {
        RollButtonContent(rolledNumber: 2)
    }
}
