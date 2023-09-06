//
//  SwiftUIExampleApp.swift
//  SwiftUIExample
//
//  Created by Viktor Golovach on 04.09.2023.
//

import SwiftUI

@main
struct SwiftUIExampleApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
            //enviroment object approach
                .environmentObject(modelData)
            //enviroment approach
                .environment(\.modelData, modelData)
            
            
            //MARK: - if we will not set environmentObject app will crash, as we didnt pass modelData to main View, BUT with environment it wont happen as environment will have static let defaultValue: ModelData = ModelData()
        }
    }
}


//MARK: approach with Evironment NOT EnvironmentObject

struct ModelDataEnviromentKey: EnvironmentKey {
    //default value
    static let defaultValue: ModelData = ModelData()
}

extension EnvironmentValues {
    var modelData: ModelData {
        get { self[ModelDataEnviromentKey.self] }
        set { self[ModelDataEnviromentKey.self] = newValue }
    }
}
