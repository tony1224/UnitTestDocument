//
//  GetEventInfoUseCase.swift
//  EventContext
//
//  Created by Morita Jun on 2018/08/26.
//  Copyright © 2018 KamuiProject. All rights reserved.
//

import Foundation
import RxSwift

final class GetEventInfoUseCase: GetEventInfoUseCaseType {
    
    let eventRepository: EventRepositoryType
    
    init(eventRepository: EventRepositoryType) {
        self.eventRepository = eventRepository
    }
    
    func execute() -> Single<[Event]> {
        return eventRepository.find()
    }
    
}
