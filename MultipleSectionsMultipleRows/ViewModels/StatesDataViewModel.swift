//
//  StatesDataViewModel.swift
//  MultipleSectionsMultipleRows
//
//  Created by David Para on 6/12/20.
//  Copyright © 2020 David Para. All rights reserved.
//

import Foundation

class StatesDataViewModel {
    private var statesData: StatesData
    
    init(bundle: Bundle) {
        if let url = bundle.url(forResource: "States", withExtension: "json") {
            do {
                let jsonData = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                statesData = try decoder.decode(StatesData.self, from: jsonData)
            } catch let error {
                fatalError(error.localizedDescription)
            }
        } else {
            statesData = StatesData(tenMostPopulousStates: [])
        }
    }
}

extension StatesDataViewModel {
    var tenMostPopulousStates: [StateData] {
        return statesData.tenMostPopulousStates
    }
}
