//
//  Food.swift
//  DemoApp
//
//  Created by KIRILL SIMAGIN on 08/07/2021.
//

import Foundation

struct Food: Identifiable {
    let title: String
    let price: Double
    let category: Categories
    let id = UUID()
}
