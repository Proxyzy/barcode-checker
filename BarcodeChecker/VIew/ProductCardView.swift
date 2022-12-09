//
//  ProductCardView.swift
//  BarcodeChecker
//
//  Created by Rokas Petrulionis on 2022-08-29.
//

import SwiftUI

struct ProductCardView: View {
    
    private let product: Product
    
    init(product: Product){
        self.product = product
    }
    
    
    
    var body: some View {
        ScrollView{
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
                }
                
            }
            .padding()
            .frame(minWidth: 0,
                   maxWidth: .infinity,
                   minHeight: 0,
                   maxHeight: .infinity,
                   alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: [.sand]), startPoint: .top,
                endPoint: .bottom))
            .edgesIgnoringSafeArea(.all)
        }
        .padding(.top)
        .background(LinearGradient(gradient: Gradient(colors: [.sand]), startPoint: .top,
            endPoint: .bottom))
        .edgesIgnoringSafeArea(.all)
        
        
    }
}

struct ProductCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCardView(product: productsData[1])
    }
}


struct ProductDisplayView: View{
    var product: Product
    var body: some View{
        VStack(){
            ForEach(product.stores){ store in
                HStack(){
                    
                    if let storeImage = storeData
                        .first(where: {$0.id == store.id})?.storeImage {
                        Image(storeImage)
                            .resizable()
                            .frame(width: 100, height: 100)
                            .cornerRadius(60)
                    }
                    Text("€"+String(format: "%.2f", store.price))
                        .font(.system(size: 60))
                }
            }
        }
    }
}
