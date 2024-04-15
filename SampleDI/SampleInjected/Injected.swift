//
//  Injected.swift
//  SampleDI
//
//  Created by Jay Lau on 2024/4/15.
//

@propertyWrapper
public struct Injected<T: AnyInjectedKey> {
    public var wrappedValue: T {
        get { InjectedValues[T.self] }
    }
    
    public init() { }
}
