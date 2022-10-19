//
//  ProductCardView.swift
//  BarcodeChecker
//
//  Created by Rokas Petrulionis on 2022-08-29.
//

import SwiftUI

struct ProductCardView: View {
    // - PROPERTIES
    var product: Product
    
    // - BODY
    var body: some View {
        VStack(spacing: 20){
            AsyncImage(url: URL(string: product.productImage)){
                image in image
                    .resizable()
                    .frame(width: 200, height: 200)
            } placeholder: {
                ProgressView()
            }
            
            Text(product.productName)
                .font(.system(size: 60))
            HStack(){
                ProductDisplayView(product: product)
                
                //                VStack(){
                //                    Image(storeData[4].storeImage)
                //                        .resizable()
                //                        .frame(width: 100, height: 100)
                //                        .cornerRadius(60)
                //                    Text(String(format: "%.2f", product.price[4]))
                //                        .font(.system(size: 60))
                //                }
            }
            
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,  maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("sand")]), startPoint: .top, endPoint: .bottom))
        .edgesIgnoringSafeArea(.all)
    }
}

// - PREVIEW

struct ProductCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCardView(product: productsData[1])
    }
}


struct ProductDisplayView: View{
    var product: Product
    
    var body: some View{
        VStack(){
            ForEach(product.price){ price in
                
            }
            ForEach(product.price){ price in
                HStack(){
                    Image(storeData[price.storeID].storeImage)
                        .resizable()
                        .frame(width: 100, height: 100)
                        .cornerRadius(60)
                    Text("€"+String(format: "%.2f", price.price))
                        .font(.system(size: 60))
                }
            }
        }
    }
}
