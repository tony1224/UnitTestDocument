//
//  Event.swift
//  EventContext
//
//  Created by Morita Jun on 2018/08/26.
//  Copyright © 2018 KamuiProject. All rights reserved.
//

import Foundation
import Shared

public typealias EventId = StringIdentifier<Event>
public struct Event: Identifierable {

    public let id: EventId
    public let title: String
    public let startedAt: Date
    public let endedAt: Date
    public let accepted: Int
    public let limit: Int
    public let address: String
    public let eventUrl: URL

}
