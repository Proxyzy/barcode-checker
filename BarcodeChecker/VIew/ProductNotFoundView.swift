//
//  ProductView.swift
//  BarcodeChecker
//
//  Created by Rokas Petrulionis on 2022-10-07.
//

import SwiftUI

struct ProductNotFoundView: View {
    private let code: String
    init(code: String){
        self.code = code
    }
    
    var body: some View {
        VStack{
            Text("Product with barcode of \n"+code+"\nwas not found")
                .multilineTextAlignment(.center)
        }
        
        .background(LinearGradient(gradient: Gradient(colors: [.sand]), startPoint: .top, endPoint: .bottom))
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,  maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("sand")]), startPoint: .top, endPoint: .bottom))
        .edgesIgnoringSafeArea(.all)
        
    }
    
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductNotFoundView(code: "String")
    }
}
