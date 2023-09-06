//
//  ModelData.swift
//  SwiftUIExample
//
//  Created by Viktor Golovach on 04.09.2023.
//

import Foundation

final class ModelData: ObservableObject {
    @Published var landmarks: [Landmark] = load("landmarkData.json")
    //to show/hide LoadingView()
    @Published var isLoading = true
    
    //in case of loading simulation
    func loadData() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: { [weak self] in
            guard let self = self else {return}
            self.landmarks = load("landmarkData.json")
            self.isLoading = false
        })
        
    }
}
 
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data


    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        assert(false, "Couldn't find \(filename) in main bundle.")
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
