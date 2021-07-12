//
//  DetailList.swift
//  DemoApp
//
//  Created by KIRILL SIMAGIN on 08/07/2021.
//

import SwiftUI

struct DetailView: View {
    let currentCategory: Categories
    /// in order to show modal view
    @State var showOrderSheet = false
    
    var body: some View {
        List(filterData(foodDataSet: foodData, by: currentCategory)){ food in
            DetailRow(food: food, showOrderSheet: $showOrderSheet)
        }
        .navigationTitle(Text(categoryString(for: currentCategory)))
        .sheet(isPresented: $showOrderSheet, content: {
            OrderForm(showOrderSheet: $showOrderSheet)
        })
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
