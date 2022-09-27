//
//  SearchSelectionView.swift
//  BarcodeChecker
//
//  Created by Rokas Petrulionis on 2022-09-15.
//

import SwiftUI

struct SearchSelectionView: View {
    @State var showBarcodeSearch = false
    @State var showNameSearch = false
    var body: some View {
        NavigationView{
            VStack(){
                HStack(){
                    Text("Select your search")
                        .font(.system(size: 45))
                        .padding()
                }
                HStack(){
                    NavigationLink(destination: TextSearchView()){
                        SearchButtonView(imageName: "magnifyingglass", searchType: "Name")
                    }
                    NavigationLink(destination: FrameView()){
                        SearchButtonView(imageName: "barcode.viewfinder", searchType: "Barcode")
                    }
                }
                
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,  maxHeight: .infinity, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: [Color("sand")]), startPoint: .top, endPoint: .bottom))
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct SearchSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        SearchSelectionView()
    }
}

struct SearchButtonView: View{
    var imageName: String
    var searchType: String
    var body: some View{
        HStack(){
            Image(systemName: imageName)
            Text("\(searchType) Search")
        }
    }
    
}

