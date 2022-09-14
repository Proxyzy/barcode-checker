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
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
                
            Text(product.productName)
                .font(.system(size: 60))
            HStack(){
                VStack(){
                    Image("maxima")
                        .resizable()
                        .frame(width: 100, height: 100)
                    Text("1.20")
                        .font(.system(size: 60))
                }
                VStack(){
                    Image("norfa")
                        .resizable()
                        .frame(width: 100, height: 100)
                    Text("1.20")
                        .font(.system(size: 60))
                }
                VStack(){
                    Image("iki")
                        .resizable()
                        .frame(width: 100, height: 100)
                    Text("1.20")
                        .font(.system(size: 60))
                }
                VStack(){
                    Image("lidl")
                        .resizable()
                        .frame(width: 100, height: 100)
                    Text("1.20")
                        .font(.system(size: 60))
                }
                VStack(){
                    Image("rimi")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .cornerRadius(60)
                    Text("1.20")
                        .font(.system(size: 60))
                }
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
