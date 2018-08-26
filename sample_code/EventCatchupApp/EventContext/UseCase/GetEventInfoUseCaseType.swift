//
//  GetEventInfoUseCaseType.swift
//  EventContext
//
//  Created by Morita Jun on 2018/08/26.
//  Copyright © 2018 KamuiProject. All rights reserved.
//

import Foundation
import RxSwift

public protocol GetEventInfoUseCaseType {
    func execute() -> Single<[Event]>
}
