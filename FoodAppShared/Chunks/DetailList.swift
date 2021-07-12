//
//  DetailList.swift
//  DemoApp
//
//  Created by KIRILL SIMAGIN on 08/07/2021.
//

import SwiftUI

struct DetailView: View {
    let currentCategory: Categories
    var body: some View {
        List(filterData(foodDataSet: foodData, by: currentCategory)){ food in
            DetailRow(food: food)
        }
        .navigationTitle(Text(categoryString(for: currentCategory)))
        .listStyle(SidebarListStyle())
    }
}

struct DetailList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            DetailView(currentCategory: .pasta)
        }
        
    }
}
