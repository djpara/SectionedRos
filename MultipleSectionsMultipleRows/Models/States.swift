//
//  States.swift
//  MultipleSectionsMultipleRows
//
//  Created by David Para on 6/12/20.
//  Copyright © 2020 David Para. All rights reserved.
//

import Foundation

struct StatesData: Decodable {
    let tenMostPopulousStates: [StateData]
}

struct StateData: Decodable {
    let state: String
    let mostPopulousCities: [CityData]
}

struct CityData: Decodable {
    let city: String
    let population: Int
}
