//
//  TextSearchWiev.swift
//  BarcodeChecker
//
//  Created by Rokas Petrulionis on 2022-09-20.
//

import SwiftUI

struct TextSearchView: View {
    @State var oo: [Product] = []
    @State private var searchText = ""
    var body: some View {
        
        VStack(){
            Text("Find Product")
                .font(.title.weight(.bold))
            Text("Start searching for product that you would like to find.")
                .multilineTextAlignment(.center)
            List(){
                ForEach(oo) { product in
                    ProductRowView(product: product)
                        
                }
            }
        }
        .padding()
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,  maxHeight: .infinity, alignment: .center)
        .foregroundColor(.gray)
        .background(LinearGradient(gradient: Gradient(colors: [Color("sand")]), startPoint: .top, endPoint: .bottom))
        .edgesIgnoringSafeArea(.all)
        .navigationTitle("Search")
        .searchable(text: $searchText)
        .onChange(of: searchText){ searchText in
            oo = productsData.filter({ product in
                product.productName.contains(searchText) ||
                product.barcode.contains(searchText)
            })
        }
    }
}

struct TextSearchVieW_Previews: PreviewProvider {
    static var previews: some View {
        TextSearchView()
    }
}

struct ProductRowView: View{
    var product: Product
    var body: some View{
        HStack{
            NavigationLink(destination: ProductCardView(product: product)){
                AsyncImage(url: URL(string: product.productImage)){
                    image in image
                        .resizable()
                        .frame(width: 200, height: 200)
                } placeholder: {
                    ProgressView()
                }
                Text(product.productName)
                    .font(.system(size: 30))
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
    
}


