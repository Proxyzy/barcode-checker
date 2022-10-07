//
//  FrameView.swift
//  BarcodeChecker
//
//  Created by Rokas Petrulionis on 2022-08-29.
//

import SwiftUI
import CodeScanner

struct FrameView: View {
    @State private var isPresentingScanner = false
        @State private var scannedCode: String?

        var body: some View {
            VStack(spacing: 10) {
                if let scannedCode = scannedCode{
                    NavigationLink("Next page", destination: ProductView(code: scannedCode), isActive: .constant(true)).hidden()
                }

                Button("Scan Code") {
                    isPresentingScanner = true
                }

                Text("Scan a QR code to begin")
            }
            .sheet(isPresented: $isPresentingScanner) {
                CodeScannerView(codeTypes: [.qr]) { response in
                    if case let .success(result) = response {
                        scannedCode = result.string
                        isPresentingScanner = false
                    }
                }
            }
        }
}

struct FrameView_Previews: PreviewProvider {
    static var previews: some View {
        FrameView()
    }
}


