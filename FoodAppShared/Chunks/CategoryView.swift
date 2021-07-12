//
//  CategoryView.swift
//  DemoApp
//
//  Created by KIRILL SIMAGIN on 08/07/2021.
//

import SwiftUI

struct CategoryView: View {
    let imageName: String
    let categoryName: String
    var body: some View {
        HStack {
            Spacer()
            ZStack {
                Image(imageName)
                    .resizable()//to resize the Image so that it fits into the it frame without distorting dimensions of the original image file.
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 150)//is used to limit the dimensions (the "size") of the corresponding view.
                    .clipped() //cuts out the areas of the view that exceeds the specified frame.
                    .cornerRadius(20.0)
                
                Text(categoryName)
                    .foregroundColor(.white)
                    .font(.custom("HelveticaNeue-Medium", size: 50))
                    .padding(.bottom, 5)
                    .padding(.leading, 5)
                 
            }
            Spacer()
        }
        .padding(.top, 5)
        .padding(.bottom, 5)
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(imageName: "desserts", categoryName: "desserts")
    }
}
