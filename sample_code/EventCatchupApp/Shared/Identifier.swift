//
//  Identifier.swift
//  Shared
//
//  Created by daimon-hiroaki on 2018/07/13.
//  Copyright © 2018年 DMM.com Co., Ltd. All rights reserved.
//

import Foundation


public typealias IntegerIdentifier<EntityType> = Identifier<EntityType, Int>
public typealias StringIdentifier<EntityType> = Identifier<EntityType, String>

/// ID の ValueObjectを表現する struct
public struct Identifier<EntityType, IdentifierValueType> {

    public let id: IdentifierValueType

    public init (id: IdentifierValueType) {
        self.id = id
    }

}


extension Identifier: Equatable where IdentifierValueType: Equatable {
    
    public static func == (lhs: Identifier<EntityType, IdentifierValueType>, rhs: Identifier<EntityType, IdentifierValueType>) -> Bool {
        return lhs.id == rhs.id
    }
    
}

extension Identifier: Comparable where IdentifierValueType: Comparable {
    public static func < (lhs: Identifier<EntityType, IdentifierValueType>, rhs: Identifier<EntityType, IdentifierValueType>) -> Bool {
        return lhs.id < rhs.id
    }
    
    public static func <= (lhs: Identifier<EntityType, IdentifierValueType>, rhs: Identifier<EntityType, IdentifierValueType>) -> Bool {
        return lhs.id <= rhs.id
    }
    
    public static func >= (lhs: Identifier<EntityType, IdentifierValueType>, rhs: Identifier<EntityType, IdentifierValueType>) -> Bool {
        return lhs.id >= rhs.id
    }
    
    public static func > (lhs: Identifier<EntityType, IdentifierValueType>, rhs: Identifier<EntityType, IdentifierValueType>) -> Bool {
        return lhs.id > rhs.id
    }
    
}

extension Identifier: ExpressibleByStringLiteral, ExpressibleByExtendedGraphemeClusterLiteral, ExpressibleByUnicodeScalarLiteral where IdentifierValueType == String {
    public typealias ExtendedGraphemeClusterLiteralType = IdentifierValueType
    public typealias UnicodeScalarLiteralType = IdentifierValueType
    public typealias StringLiteralType = IdentifierValueType
    public init(stringLiteral value: IdentifierValueType) {
        self.init(id: value)
    }
}


extension Identifier: ExpressibleByIntegerLiteral where IdentifierValueType: ExpressibleByIntegerLiteral {
    public typealias IntegerLiteralType = IdentifierValueType.IntegerLiteralType
    public init(integerLiteral value: Identifier.IntegerLiteralType) {
        let id = IdentifierValueType(integerLiteral: value)
        self.init(id: id)
    }
}


extension Identifier: ExpressibleByFloatLiteral where IdentifierValueType: ExpressibleByFloatLiteral {
    public typealias FloatLiteralType = IdentifierValueType.FloatLiteralType
    public init(floatLiteral value: Identifier.FloatLiteralType) {
        let id = IdentifierValueType(floatLiteral: value)
        self.init(id: id)
    }
}


extension Identifier: ExpressibleByBooleanLiteral where IdentifierValueType: ExpressibleByBooleanLiteral {
    public typealias BooleanLiteralType = IdentifierValueType.BooleanLiteralType
    public init(booleanLiteral value: Identifier.BooleanLiteralType) {
        let id = IdentifierValueType(booleanLiteral: value)
        self.init(id: id)
    }
}


extension Identifier: ExpressibleByNilLiteral where IdentifierValueType: ExpressibleByNilLiteral {
    public init(nilLiteral: ()) {
        let id = IdentifierValueType(nilLiteral: nilLiteral)
        self.init(id: id)
    }
}
