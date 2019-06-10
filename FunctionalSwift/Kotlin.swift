//
//  Kotlin.swift
//  FunctionalSwift
//
//  Created by Geonu Jeon on 10/06/2019.
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

extension Bool: KotlinHigherOrderFunctionsEnabled {
    
}

extension Int: KotlinHigherOrderFunctionsEnabled {
    
}

extension UInt: KotlinHigherOrderFunctionsEnabled {
    
}

extension Float: KotlinHigherOrderFunctionsEnabled {
    
}

extension Double: KotlinHigherOrderFunctionsEnabled {
    
}

extension Character: KotlinHigherOrderFunctionsEnabled {
    
}

extension String: KotlinHigherOrderFunctionsEnabled {
    
}

extension Data: KotlinHigherOrderFunctionsEnabled {
    
}

extension Date: KotlinHigherOrderFunctionsEnabled {
    
}

extension Array: KotlinHigherOrderFunctionsEnabled {
    
}

extension Dictionary: KotlinHigherOrderFunctionsEnabled {
    
}

extension Set: KotlinHigherOrderFunctionsEnabled {
    
}
