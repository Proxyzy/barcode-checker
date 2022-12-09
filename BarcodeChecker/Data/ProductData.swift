//
//  ProductData.swift
//  BarcodeChecker
//
//  Created by Rokas Petrulionis on 2022-08-29.
//

import SwiftUI

let productsData = [
    Product(productName: "Bounty",
            barcode: "5000158101616",
            stores:
                [
                    ProductStoreLink(id: "1", price: 2.39),
                    ProductStoreLink(id: "2", price: 2.99),
                    ProductStoreLink(id: "3", price: 1.16),
                    ProductStoreLink(id: "4", price: 2.17),
                    ProductStoreLink(id: "5", price: 2.80)
                ],
            productImage: "data:image/jpeg;base64,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"),
    Product(
        productName: "Mars",
        barcode: "5901503651001",
        stores:
            [
                ProductStoreLink(id: "5", price: 2.13),
                ProductStoreLink(id: "3", price: 2.20),
                ProductStoreLink(id: "4", price: 1.16),
                ProductStoreLink(id: "2", price: 2.17),
                ProductStoreLink(id: "1", price: 2.80)
            ],
        productImage: "https://assets.stickpng.com/images/58d2a68cdc164e9dd9e668ee.png"),
    Product(
        productName: "Lion",
        barcode: "6003326011624",
        stores:
            [
                ProductStoreLink(id: "5", price: 2.13),
                ProductStoreLink(id: "3", price: 2.20),
                ProductStoreLink(id: "4", price: 1.16),
                ProductStoreLink(id: "2", price: 2.17),
                ProductStoreLink(id: "1", price: 2.80)
            ],
        productImage: "https://cdn.barbora.lt/products/90d69571-965c-475e-af62-8f1b232bbdc2_s.png"),
    Product(
        productName: "Snickers",
        barcode: "5000159461122",
        stores:
            [
                ProductStoreLink(id: "5", price: 2.13),
                ProductStoreLink(id: "3", price: 2.20),
                ProductStoreLink(id: "4", price: 1.16),
                ProductStoreLink(id: "2", price: 2.17),
                ProductStoreLink(id: "1", price: 2.80)
            ],
        productImage: "https://cdn.barbora.lt/products/f3da53b0-9fc4-40c7-b7e0-3c69be044ef4_m.png"),
    Product(
        productName: "Kit-Kat",
        barcode: "0000502510946",
        stores:
            [
                ProductStoreLink(id: "5", price: 2.13),
                ProductStoreLink(id: "3", price: 2.20),
                ProductStoreLink(id: "4", price: 1.16),
                ProductStoreLink(id: "2", price: 2.17),
                ProductStoreLink(id: "1", price: 2.80)
            ],
        productImage: "https://cdn.barbora.lt/products/860223f6-74d3-45e5-8e8d-dbae0899cd94_s.png"),
    Product(
        productName: "Milkyway",
        barcode: "040000422068",
        stores:
            [
                ProductStoreLink(id: "5", price: 2.13),
                ProductStoreLink(id: "3", price: 2.20),
                ProductStoreLink(id: "4", price: 1.16),
                ProductStoreLink(id: "2", price: 2.17),
                ProductStoreLink(id: "1", price: 2.80)
            ],
        productImage: "https://cdn.barbora.lt/products/fca4cfca-c9a9-40f6-afc9-2b48ccc32ddb_m.png"),
    Product(
        productName: "Kinder Bueno",
        barcode: "8000500282373",
        stores:
            [
                ProductStoreLink(id: "5", price: 2.13),
                ProductStoreLink(id: "3", price: 2.20),
                ProductStoreLink(id: "4", price: 1.16),
                ProductStoreLink(id: "2", price: 2.17),
                ProductStoreLink(id: "1", price: 2.80)
            ],
        productImage: "https://cdn.barbora.lt/products/b818e89a-9ef2-4cb5-9b35-56bc48044011_m.png"),
    

    Product(
        productName: "Manija",
        barcode: "762221033437",
        stores:
            [
                ProductStoreLink(id: "5", price: 2.13),
                ProductStoreLink(id: "3", price: 2.20),
                ProductStoreLink(id: "4", price: 1.16),
                ProductStoreLink(id: "2", price: 2.17),
                ProductStoreLink(id: "1", price: 2.80)
            ],
        productImage: "https://cdn.barbora.lt/products/0bfbfc8a-7f0b-47bd-9987-b27f1dc43aa3_m.png"),
    Product(
        productName: "3Bit",
        barcode: "5900951286186",
        stores:
            [
                ProductStoreLink(id: "5", price: 2.13),
                ProductStoreLink(id: "3", price: 2.20),
                ProductStoreLink(id: "4", price: 1.16),
                ProductStoreLink(id: "2", price: 2.17),
                ProductStoreLink(id: "1", price: 2.80)
            ],
        productImage: "https://cdn.barbora.lt/products/95390959-7beb-4b79-ab2f-567f1ec0a603_m.png"),
    Product(
        productName: "Twix",
        barcode: "5000159366267",
        stores:
            [
                ProductStoreLink(id: "5", price: 2.13),
                ProductStoreLink(id: "3", price: 2.20),
                ProductStoreLink(id: "4", price: 1.16),
                ProductStoreLink(id: "2", price: 2.17),
                ProductStoreLink(id: "1", price: 2.80)
            ],
        productImage: "https://cdn.barbora.lt/products/d3881273-9c78-44d6-a3a8-ee3a031459ff_m.png"),
    Product(
        productName: "Tupla",
        barcode: "5905703654556",
        stores:
            [
                ProductStoreLink(id: "5", price: 2.13),
                ProductStoreLink(id: "3", price: 2.20),
                ProductStoreLink(id: "4", price: 1.16),
                ProductStoreLink(id: "2", price: 2.17),
                ProductStoreLink(id: "1", price: 2.80)
            ],
        productImage: "https://cdn.barbora.lt/products/c4f54541-cb56-4378-bfa6-fe7a9bba2fb8_m.png"),
    Product(
        productName: "Knopers",
        barcode: "4014400920482",
        stores:
            [
                ProductStoreLink(id: "5", price: 2.13),
                ProductStoreLink(id: "3", price: 2.20),
                ProductStoreLink(id: "4", price: 1.16),
                ProductStoreLink(id: "2", price: 2.17),
                ProductStoreLink(id: "1", price: 2.80)
            ],
        productImage: "https://cdn.barbora.lt/products/049ca5b0-2d7b-4b9f-a35b-6aee9dc34624_m.png"),
    Product(
        productName: "Geisha",
        barcode: "6164004675641",
        stores:
            [
                ProductStoreLink(id: "5", price: 2.13),
                ProductStoreLink(id: "3", price: 2.20),
                ProductStoreLink(id: "4", price: 1.16),
                ProductStoreLink(id: "2", price: 2.17),
                ProductStoreLink(id: "1", price: 2.80)
            ],
        productImage: "https://cdn.barbora.lt/products/2076c228-8e2d-4b1e-8467-501fbe3dda00_m.png"),
    Product(
        productName: "Daim",
        barcode: "7622200180301",
        stores:
            [
                ProductStoreLink(id: "5", price: 2.13),
                ProductStoreLink(id: "3", price: 2.20),
                ProductStoreLink(id: "4", price: 1.16),
                ProductStoreLink(id: "2", price: 2.17),
                ProductStoreLink(id: "1", price: 2.80)
            ],
        productImage: "https://cdn.barbora.lt/products/09e0e971-0773-4675-8779-51b83beeac86_m.png"),
    Product(
        productName: "Nutella B-Ready",
        barcode: "8000500217078",
        stores:
            [
                ProductStoreLink(id: "5", price: 2.13),
                ProductStoreLink(id: "3", price: 2.20),
                ProductStoreLink(id: "4", price: 1.16),
                ProductStoreLink(id: "2", price: 2.17),
                ProductStoreLink(id: "1", price: 2.80)
            ],
        productImage: "https://cdn.barbora.lt/products/2a7ffb9e-7960-460f-87e8-91c15af05854_s.png"),
    Product(
        productName: "Schogetten ",
        barcode: "4000415143800",
        stores:
            [
                ProductStoreLink(id: "5", price: 2.13),
                ProductStoreLink(id: "3", price: 2.20),
                ProductStoreLink(id: "4", price: 1.16),
                ProductStoreLink(id: "2", price: 2.17),
                ProductStoreLink(id: "1", price: 2.80)
            ],
        productImage: "https://cdn.barbora.lt/products/d1480be1-876f-4e4c-a53f-9c487ade3587_m.png")
    
    
    
    

]
