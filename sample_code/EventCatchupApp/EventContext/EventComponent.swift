//
//  EventComponent.swift
//  EventContext
//
//  Created by Morita Jun on 2018/08/26.
//  Copyright © 2018 KamuiProject. All rights reserved.
//

import Foundation

/// Event情報コンテキストのDI実装
public struct EventComponent: EventComponentType {
    
    public static let shared = EventComponent()
    
    public let getEventInfoUseCase: GetEventInfoUseCaseType
    
    init() {
        let eventRepository = EventRepository()
        getEventInfoUseCase = GetEventInfoUseCase(eventRepository: eventRepository)
    }
    
}
