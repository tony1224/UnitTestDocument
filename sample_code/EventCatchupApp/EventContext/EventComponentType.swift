//
//  EventComponentType.swift
//  EventContext
//
//  Created by Morita Jun on 2018/08/26.
//  Copyright © 2018 KamuiProject. All rights reserved.
//

import Foundation

/// EventコンテキストのDI用 I/F
public protocol EventComponentType {
    var getEventInfoUseCase: GetEventInfoUseCaseType { get }
}
