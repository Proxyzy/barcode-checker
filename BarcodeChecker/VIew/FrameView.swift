//
//  FrameView.swift
//  BarcodeChecker
//
//  Created by Rokas Petrulionis on 2022-08-29.
//

import SwiftUI
import CodeScanner

struct FrameView: View {
        @State private var scannedCode: String?

        var body: some View {
            VStack(spacing: 10) {
                if let scannedCode = scannedCode{
                    let contains = productsData.contains(where: {$0.barcode == scannedCode})
                    if contains{
                        NavigationLink("Next page", destination: ProductCardView(product: productsData.first(where: {$0.barcode == scannedCode}) ?? productsData[1]), isActive: .constant(true)).hidden()
                    }
                    else{
                        NavigationLink("Next page", destination: ProductView(code: scannedCode), isActive: .constant(true)).hidden()
                    }
                }
                CodeScannerView(codeTypes: [.upce,.ean13,.code128,.code39,.codabar,.qr]) { response in
                    if case let .success(result) = response {
                        scannedCode = result.string
                    
                    }
                }
                .ignoresSafeArea()
            
            }
        }
}

struct FrameView_Previews: PreviewProvider {
    static var previews: some View {
        FrameView()
    }
}


