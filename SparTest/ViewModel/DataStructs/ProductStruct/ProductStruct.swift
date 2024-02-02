//
//  ProductStruct.swift
//  SparTest
//
//  Created by Nikita Kuznetsov on 02.02.2024.
//

import Foundation

struct ProductStruct: Identifiable {
    let id: UUID
    let name: String
    let image: String
    let rating: Double
    let reviewCounts: Int
    let country: String
    let description: String
    let characteristics: [CharacteristicStruct]
    let reviews: [ReviewsStruct]
    let price: Double
}

struct CharacteristicStruct {
    let produced: String
    let kkal: Int
    let fats: Int
    let proteins: Int
    let carbohydrates: Int
    let weight: Int
}

struct ReviewsStruct {
    let name: String
    let date: Date
    let rating: Int
    let description: String
}
