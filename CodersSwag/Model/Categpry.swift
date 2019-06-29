//
//  Categpry.swift
//  CodersSwag
//
//  Created by Shaon on 6/27/19.
//  Copyright © 2019 Shaon. All rights reserved.
//

import Foundation

struct Category{
    private(set) public var catTitle : String
    private(set) public var imageName : String
    
    init(title:String, imageName:String) {
        self.catTitle = title
        self.imageName = imageName
    }
}
