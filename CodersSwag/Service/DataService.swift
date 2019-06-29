//
//  CategoryService.swift
//  CodersSwag
//
//  Created by Shaon on 6/27/19.
//  Copyright © 2019 Shaon. All rights reserved.
//

import Foundation
class DataService {
    static let instance = DataService()

    private let categories = [
    Category(title: "Shirts", imageName: "shirts.png"),
    Category(title: "Hoodies", imageName: "hoodies.png"),
    Category(title: "Hats", imageName: "hats.png"),
    Category(title: "Digital", imageName: "digital.png")
    ]

    private let hats = [
        Product(title: "Devlopes Logo Graphics Brenie", price: "$25", imageName:  "hat01.png"),
        Product(title: "Devlopes Logo Hat Black", price: "$22", imageName:  "hat02.png"),
        Product(title: "Devlopes Logo Hat White", price: "$27", imageName:  "hat03.png")
    ]
    
    private let hoodies = [
        Product(title: "Devlopes Logo Hoodey Grey", price: "$25", imageName:  "hoodie01.png"),
        Product(title: "Devlopes Logo Hoodey Red", price: "$21", imageName:  "hoodie02.png"),
        Product(title: "Devlopes Hoodey Grey", price: "$14", imageName:  "hoodie03.png")
    ]
    
    
    private let shirts = [
        Product(title: "Devlopes Logo Shirt Black", price: "$25", imageName:  "shirt01.png"),
        Product(title: "Devlopes Logo Shirt White", price: "$21", imageName:  "shirt02.png"),
        Product(title: "Devlopes Shirt Grey", price: "$14", imageName:  "shirt03.png")
    ]
    
    private let digitalGoods = [Product]()
    
    
    func getCategories() -> [Category]{
        return categories
    }
    
    func getProducts(forCategoryTitle title:String) -> [Product] {
        switch title {
        case "Shirts":
            return getShirts()
            
        case "Hats":
            return getHats()
            
        case "Hoodies":
            return getHoodies()
            
        case "Digital":
            return getDigitalGoods()
            
        default:
            return getShirts()
        }
    }
    
    private func getShirts() -> [Product] {
        return shirts
    }
    
    
    private func getHoodies() -> [Product] {
        return hoodies
    }
    
    
    private func getHats() -> [Product] {
        return hats
    }
    
    private func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
}
