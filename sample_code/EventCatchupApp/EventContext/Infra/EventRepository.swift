//
//  EventRepository.swift
//  EventContext
//
//  Created by Morita Jun on 2018/08/26.
//  Copyright © 2018 KamuiProject. All rights reserved.
//

import RxSwift

final class EventRepository: EventRepositoryType {

    private var events = ([Int])(1...10).map { (index) -> Event in
        return Event(
            id: EventId(id: "\(index)"),
            title: "Theme:\(index)",
            startedAt: Date(),
            endedAt: Date(),
            accepted: 100,
            limit: 200,
            address: "東京都足立区西台1-2-3",
            eventUrl: URL(string: "https://www.yahoo.co.jp")!
        )
    }
    
    func find() -> Single<[Event]> {
        return Single.just(events)
    }
    
}

