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
                    
                    SearchButtonView(showBarcodeSearch: $showBarcodeSearch, showNameSearch: $showNameSearch, imageName: "magnifyingglass", searchType: "Name")
                    SearchButtonView(showBarcodeSearch: $showBarcodeSearch, showNameSearch: $showNameSearch, imageName: "barcode.viewfinder", searchType: "Barcode")
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
    @Binding var showBarcodeSearch: Bool
    @Binding var showNameSearch: Bool
    var imageName: String
    var searchType: String
    var body: some View{
        Button(action: {
            print("\(searchType) search")
            if searchType == "Name"{
                showNameSearch = true
                showBarcodeSearch = false
            } else{
                showNameSearch = false
                showBarcodeSearch = true
            }
        }, label: {
            HStack(){
                Image(systemName: imageName)
                Text("\(searchType) Search")
            }
        })
    }
    
}

