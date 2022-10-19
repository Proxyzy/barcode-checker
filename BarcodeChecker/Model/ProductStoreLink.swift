//
//  File.swift
//  BarcodeChecker
//
//  Created by Rokas Petrulionis on 2022-10-17.
//

import Foundation

struct ProductStoreLink: Identifiable {
    var id = UUID()
    var storeID: Int
    var price: Float
}
