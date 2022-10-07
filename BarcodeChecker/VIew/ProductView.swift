//
//  ProductView.swift
//  BarcodeChecker
//
//  Created by Rokas Petrulionis on 2022-10-07.
//

import SwiftUI

struct ProductView: View {
    private let code: String
    init(code: String){
        self.code = code
    }
    
    var body: some View {
        Text(code)
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(code: "String")
    }
}
