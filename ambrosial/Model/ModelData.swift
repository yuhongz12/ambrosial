//
//  ModelData.swift
//  ambrosial
//
//  Created by Jason Lin on 12/26/21.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    
    @Published var brewMethods: [BrewMethod] = load("brewmethodData.json")
    @Published var beans: [Bean] = load("beanData.json")
    @Published var coffeeFilters: [CoffeeFilter] = load("coffeefilterData.json")
    @Published var recipes: [Recipe] = load("recipeList.json")
    
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
