//
//  DIContainer.swift
//  Demo
//
//  Created by Jay Lau on 2024/4/15.
//

import SampleInjected

struct DIContainer {
    
    let title: String = "Hello, SampleInjected!"
    
    static let `default`: DIContainer = .init()

}

extension DIContainer: AnyInjectedKey {
    
    static var currentValue: DIContainer = Self.default

}
