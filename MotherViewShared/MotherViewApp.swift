//
//  MotherViewApp.swift
//  Shared
//
//  Created by KIRILL SIMAGIN on 12/07/2021.
//

import SwiftUI

@main
struct MotherViewApp: App {
    @StateObject var viewRouter = ViewRouter()
    var body: some Scene {
        WindowGroup {
//            MotherView(viewRouter: ViewRouter())
            MotherView().environmentObject(ViewRouter())
        }
    }
}
