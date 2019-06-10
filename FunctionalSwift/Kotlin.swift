//
//  Kotlin.swift
//  FunctionalSwift
//
//  Created by 전건우 on 10/06/2019.
//  Copyright © 2019 Geonu Jeon. All rights reserved.
//

import Foundation

func run(_ block: () throws -> Void) rethrows -> Void {
    try block()
}

protocol KotlinHigherOrderFunctionsEnabled {
    
}

extension KotlinHigherOrderFunctionsEnabled {
    func also(_ block: (Self) throws -> Void) rethrows -> Self {
        try block(self)
        return self
    }
    
    func `let`<R>(_ block: (Self) throws -> R) rethrows -> R {
        return try block(self)
    }
}

extension NSObject: KotlinHigherOrderFunctionsEnabled {
    
}
