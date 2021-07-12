//
//  ContentViewB.swift
//  DemoApp
//
//  Created by KIRILL SIMAGIN on 12/07/2021.
//

import SwiftUI

struct ContentViewB: View {
    //    @StateObject var viewRouter: ViewRouter
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                Image(systemName: "arrowshape.turn.up.backward.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(minWidth: 100, maxWidth: .infinity, minHeight: 50, maxHeight: .infinity)
                    .foregroundColor(.green)
                    .padding()
                
                Spacer()
                
                Button(action: {
                    withAnimation{
                        viewRouter.currentPage = .page1
                    }
                }, label: {
                    Text("Back")
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
}

struct ContentViewB_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewB().environmentObject(ViewRouter())
    }
}
