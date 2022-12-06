//
//  ProductRowView.swift
//  BarcodeChecker
//
//  Created by Rokas Petrulionis on 2022-10-19.
//

import SwiftUI

struct ProductRowView: View{
    
    private var product: Product
    
    init(product: Product) {
        self.product = product
    }
    
    var body: some View{
        HStack{
            NavigationLink(destination: ProductCardView(product: product)){
                AsyncImage(url: URL(string: product.productImage)){
                    image in image
                        .resizable()
                        .frame(width: 100, height: 100)
                } placeholder: {
                    ProgressView()
                }
                Text(product.productName)
                    .font(.system(size: 30))
                Spacer()
                Text(product.barcode)
                    .font(.system(size: 30))
            }
            .padding()
        }
        .edgesIgnoringSafeArea(.all)
    }
    
}
