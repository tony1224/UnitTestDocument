//
//  EventRepositoryType.swift
//  EventContext
//
//  Created by Morita Jun on 2018/08/26.
//  Copyright © 2018 KamuiProject. All rights reserved.
//

import RxSwift

protocol EventRepositoryType {
    func find() -> Single<[Event]>
}
