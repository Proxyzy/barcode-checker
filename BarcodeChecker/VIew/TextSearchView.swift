//
//  TextSearchWiev.swift
//  BarcodeChecker
//
//  Created by Rokas Petrulionis on 2022-09-20.
//

import SwiftUI

struct TextSearchView: View {
    
    @State private var products: [Product] = productsData
    @State private var searchText = ""
    
    init() {
        UITableView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        VStack(){
            HStack{
                HStack{
                    Image(systemName: "magnifyingglass")
                    TextField(
                        "Search",
                        text: $searchText
                    )
                }
                .padding(10)
                .background(.white)
                .cornerRadius(5)
            }
            .padding(15)
            
            
            List{
                ForEach(products) { product in
                                    ProductRowView(product: product)
                
                                }
            }


        }
        .background(LinearGradient(gradient: Gradient(colors: [.sand]), startPoint: .top, endPoint: .bottom))
        .onChange(of: searchText){ searchText in
                    searchTextChanged(searchText)
                }
        
//        VStack(){
//            Text("Find Product")
//                .font(.title.weight(.bold))
//            Text("Start searching for product that you would like to find.")
//                .multilineTextAlignment(.center)
//            List(){
//                ForEach(products) { product in
//                    ProductRowView(product: product)
//
//                }
//            }
//        }
//        .padding()
//        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,  maxHeight: .infinity, alignment: .center)
//        .foregroundColor(.gray)
//        .background(LinearGradient(gradient: Gradient(colors: [Color("sand")]), startPoint: .top, endPoint: .bottom))
//        .edgesIgnoringSafeArea(.all)
//        .navigationTitle("Search")
//        .searchable(text: $searchText)
//        .onChange(of: searchText){ searchText in
//            searchTextChanged(searchText)
//        }
    }
    
    func searchTextChanged(_ text: String){
        if searchText.isEmpty{
            products = productsData
        }
        else{
            products = productsData.filter({ product in
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

