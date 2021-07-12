//
//  ContentViewA.swift
//  DemoApp
//
//  Created by KIRILL SIMAGIN on 12/07/2021.
//

import SwiftUI

struct ContentViewA: View {
    //    @StateObject var viewRouter: ViewRouter
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        VStack {
            Image("drapeaux_norvège_france_hollande_monaco_indonésie_thaïlande")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(minWidth: 100, maxWidth: .infinity, minHeight: 50, maxHeight: .infinity)
                .padding()
            
            Spacer()
            
            Button(action: {
                withAnimation{
                    viewRouter.currentPage = .page2
                }
            }, label: {
                Text("Forward")
                    .foregroundColor(.white)
                    .padding()
            })
            .background(Color.green)
            .cornerRadius(15)
            .padding(.bottom, 10)
            .buttonStyle(PlainButtonStyle())
        }
        .padding()
    }
}

struct ContentViewA_Previews: PreviewProvider {
    static var previews: some View {
        //        ContentViewA(viewRouter: ViewRouter())
        ContentViewA().environmentObject(ViewRouter())
    }
}
