//
//  KeychainPersistable.swift
//  PersistanceService
//
//  Created by Balazs Szamody on 3/4/19.
//  Copyright © 2019 Fr3qFly. All rights reserved.
//

import Foundation

public protocol KeychainPersistable: PredefinedPersistable {}

extension KeychainPersistable {
    public func save(at key: String) throws {
        try save(at: key, on: .keyChain)
    }
    
    public static func get(from key: String) throws -> Self {
        return try get(from: key, on: .keyChain)
    }
    
    public static func delete(from key: String) throws {
        try delete(from: key, on: .keyChain)
    }
}
