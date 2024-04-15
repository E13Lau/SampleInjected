//
//  AnyDIKey.swift
//  SampleDI
//
//  Created by Jay Lau on 2024/4/15.
//

public protocol AnyInjectedKey {

    /// The associated type representing the type of the dependency injection key's value.
    associatedtype Value

    /// The default value for the dependency injection key.
    static var currentValue: Self.Value { get set }
}
