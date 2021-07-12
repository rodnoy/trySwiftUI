//
//  DetailRow.swift
//  DemoApp
//
//  Created by KIRILL SIMAGIN on 08/07/2021.
//

import SwiftUI

struct DetailRow: View {
    let food: Food
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text(food.title)
                    .font(.headline)
                    .padding(.top, 10)
                Text("\(food.price, specifier: "%2.2f") $")
                    .font(.caption)
            }
            Spacer()
            Button(action:{
                print("order smth")
            }) {
                VStack(spacing: 5) {
                    Image(systemName: "dollarsign.circle")
                        .font(.title)
                    Text("ORDER")
                        
                }
                .foregroundColor(.white)
            }
            .buttonStyle(PlainButtonStyle())
            .frame(width: 80, height: 60)
            .background(Color.orange)
            .cornerRadius(10)
        }
        .padding()
    }
}

struct DetailRow_Previews: PreviewProvider {
    static var previews: some View {
        DetailRow(food: foodData[0])
            .previewLayout(.sizeThatFits)
    }
}
