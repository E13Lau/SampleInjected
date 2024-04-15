//
//  DemoApp.swift
//  Demo
//
//  Created by Jay Lau on 2024/4/15.
//

import SwiftUI
import SampleInjected

@main
struct DemoApp: App {
    
    init() {
        InjectedValues[DIContainer.self] = DIContainer.currentValue
        InjectedValues[AnyUseCases.self] = RealUseCases()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
