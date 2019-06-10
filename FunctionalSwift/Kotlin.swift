//
//  Kotlin.swift
//  FunctionalSwift
//
//  Created by 전건우 on 10/06/2019.
//  Copyright © 2019 Geonu Jeon. All rights reserved.
//

import Foundation

func run(_ block: () -> Void) -> Void {
    block()
}

protocol KotlinHigherOrderFunctionsEnabled {
    
}

extension KotlinHigherOrderFunctionsEnabled {
    func also(_ block: (Self) -> Void) -> Self {
        block(self)
        return self
    }
    
    func `let`<R>(_ block: (Self) -> R) -> R {
        return block(self)
    }
}

extension NSObject: KotlinHigherOrderFunctionsEnabled {
    
}
