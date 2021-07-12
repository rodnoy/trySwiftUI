//
//  MotherView.swift
//  DemoApp
//
//  Created by KIRILL SIMAGIN on 12/07/2021.
//

import SwiftUI

struct MotherView: View {
//    @StateObject var viewRouter: ViewRouter
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        switch viewRouter.currentPage {
        case .page1:
            ContentViewA()
        case .page2:
            ContentViewB()
        }
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView().environmentObject(ViewRouter())
    }
}
