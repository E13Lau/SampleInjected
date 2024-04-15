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
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
