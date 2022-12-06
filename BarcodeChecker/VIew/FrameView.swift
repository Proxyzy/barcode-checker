//
//  FrameView.swift
//  BarcodeChecker
//
//  Created by Rokas Petrulionis on 2022-08-29.
//

import SwiftUI
import CodeScanner

struct FrameView: View {
    
    enum ProductState {
        case notFound(code: String)
        case product(product: Product)
    }
    
    @State private var scannedCode: String?
    @State private var showProductScreen = false
    @State private var showProductNotFoundScreen = false
    @State private var productState: ProductState?
    
    var body: some View {
            
        if let productState = productState {
            switch productState {
            case .notFound(let code):
                NavigationLink(destination: ProductNotFoundView(code: code),
                               isActive: $showProductNotFoundScreen,
                               label: {})
            case .product(let product):
                NavigationLink(destination: ProductCardView(product: product),
                               isActive: $showProductScreen,
                               label: {})
            }
        }
        
        CodeScannerView(codeTypes: [.upce, .ean13, .code128, .code39, .codabar, .qr]) { response in
            switch response {
            case .success(let result):
                scannedCode = result.string
                searchForProduct(barcode: result.string)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func searchForProduct(barcode: String) {
        guard let product = productsData.first(where: { $0.barcode == scannedCode }) else {
            showProductNotFoundScreen = true
            productState = .notFound(code: barcode)
            return
        }
        
        showProductScreen = true
        productState = .product(product: product)
    }
}

struct FrameView_Previews: PreviewProvider {
    static var previews: some View {
        FrameView()
    }
}


