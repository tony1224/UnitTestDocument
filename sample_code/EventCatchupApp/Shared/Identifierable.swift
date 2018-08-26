//
//  Identifierable.swift
//  Shared
//
//  Created by daimon-hiroaki on 2018/07/13.
//  Copyright © 2018年 DMM.com Co., Ltd. All rights reserved.
//

import Foundation

/// IdType: Equatable を id という名前で持つ Entiry の Protocol
public protocol Identifierable: Equatable {
    associatedtype IdType: Equatable
    var id: IdType { get }
}

/// Identifierable に Equatable を実装
public extension Identifierable {
    public static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.id == rhs.id
    }
}
