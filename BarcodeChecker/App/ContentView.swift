//
//  ContentView.swift
//  BarcodeChecker
//
//  Created by Rokas Petrulionis on 2022-08-29.
//

import SwiftUI

struct ContentView: View {
    var product: Product
    var body: some View {
        Text(product.productName)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(product: productsData[0])
    }
}
