//
//  Barcode.swift
//  BarcodeChecker
//
//  Created by Rokas Petrulionis on 2022-08-29.
//

import SwiftUI


struct Product: Identifiable{
    var id = UUID()
    var productName: String
    var barcode: String
    var price: [ProductStoreLink]
    var productImage: String
}
