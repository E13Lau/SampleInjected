//
//  InjectedValues.swift
//  SampleDI
//
//  Created by Jay Lau on 2024/4/15.
//

/// Provides access to injected dependencies.
public struct InjectedValues {
    
    private static var current: [String: Any] = [:]
    
    /// A static subscript for updating the `currentValue` of `InjectionKey` instances.
    public static subscript<K>(key: String) -> K where K : AnyInjectedKey {
        get {
            guard let value = current[key] as? K else {
                fatalError("No value found for key: \(key)")
            }
            return value
        }
        set { current[key] = newValue }
    }
    
    public static subscript<K>(key: K.Type) -> K where K : AnyInjectedKey {
        get {
            let keyMap = String(reflecting: K.self)
            guard let value = current[String(describing: keyMap)] as? K else {
                fatalError("No value found for key: \(keyMap)")
            }
            return value
        }
        set {
            let keyMap = String(reflecting: K.self)
            current[keyMap] = newValue
        }
    }
}
