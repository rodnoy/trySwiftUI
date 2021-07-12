//
//  ViewRouter.swift
//  DemoApp
//
//  Created by KIRILL SIMAGIN on 12/07/2021.
//

import Foundation

class ViewRouter: ObservableObject {
    
    @Published var currentPage: Page = .page1
    //The @Published property wrapper works very similarly to the @State property wrapper. Every time the value assigned to the wrapped property changes, every observing view rerenders.
}
