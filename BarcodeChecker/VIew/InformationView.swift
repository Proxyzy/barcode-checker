//
//  InformationView.swift
//  BarcodeChecker
//
//  Created by Rokas Petrulionis on 2022-12-06.
//

import SwiftUI

struct InformationView: View {
    var body: some View {
        VStack{
            Text("App used for cheking prices of products in diferent Lithuanian Stores")
                .multilineTextAlignment(.trailing)
        }
        .background(LinearGradient(gradient: Gradient(colors: [.sand]), startPoint: .top, endPoint: .bottom))
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,  maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("sand")]), startPoint: .top, endPoint: .bottom))
        .edgesIgnoringSafeArea(.all)
        
    }
    
}
