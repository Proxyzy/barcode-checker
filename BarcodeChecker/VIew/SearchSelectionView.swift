//
//  SearchSelectionView.swift
//  BarcodeChecker
//
//  Created by Rokas Petrulionis on 2022-09-15.
//

import SwiftUI

struct SearchSelectionView: View {
    var body: some View {
//        NavigationView{
            VStack(){
                TabView{
                    NavigationView{
                        TextSearchView()
                            .navigationTitle("Text Search")
                    }
                    .navigationViewStyle(StackNavigationViewStyle())
                    .tabItem{
                        Label("Text Search", systemImage: "magnifyingglass")
                    }
                    .tag(1)
                    NavigationView{
                        FrameView()
                            .navigationTitle("Barcode Scan Search")
                    }
                    .navigationViewStyle(StackNavigationViewStyle())
                    .tabItem{
                        Label("Scan Search", systemImage: "barcode.viewfinder")
                    }
                        .tag(2)
                }
                
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,  maxHeight: .infinity, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: [Color("sand")]), startPoint: .top, endPoint: .bottom))
            .edgesIgnoringSafeArea(.all)
//        }
//        .navigationViewStyle(StackNavigationViewStyle())
    }
}
