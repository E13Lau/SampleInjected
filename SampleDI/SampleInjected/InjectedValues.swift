//
//  InjectedValues.swift
//  SampleDI
//
//  Created by Jay Lau on 2024/4/15.
//

/// Provides access to injected dependencies.
public struct InjectedValues {
    
    private static var current: [String: Any] = [:]
    
    public static subscript<K>(key: K.Type) -> K {
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
