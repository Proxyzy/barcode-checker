//
//  TextSearchWiev.swift
//  BarcodeChecker
//
//  Created by Rokas Petrulionis on 2022-09-20.
//

import SwiftUI

struct TextSearchView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationView{
            ZStack(){
                Text("Searching \(searchText)")
                    .searchable(text: $searchText)
                    .navigationTitle("Search")
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,  maxHeight: .infinity, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: [Color("sand")]), startPoint: .top, endPoint: .bottom))
            .edgesIgnoringSafeArea(.all)
            
        }
    }
}

struct TextSearchVieW_Previews: PreviewProvider {
    static var previews: some View {
        TextSearchView()
    }
}
