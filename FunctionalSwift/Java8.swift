//
//  Java8.swift
//  FunctionalSwift
//
//  Created by Geonu Jeon on 10/06/2019.
//  Copyright © 2019 Geonu Jeon. All rights reserved.
//

import Foundation

typealias Runnable = () -> Void
typealias Supplier<T> = () -> T
typealias Consumer<T> = (T) -> Void
typealias BiConsumer<T, U> = (T, U) -> Void

typealias UnaryOperator<T> = (T) -> T
typealias BinaryOperator<T> = (T, T) -> T

typealias Function<T, R> = (T) -> R
typealias BiFunction<T, U, R> = (T, U) -> R

typealias Predicate<T> = (T) -> Bool
typealias BiPredicate<T, U> = (T, U) -> Bool

extension Optional {
    static func empty() -> Optional<Wrapped> {
        return nil
    }
    
    static func of(_ value: Wrapped) -> Optional<Wrapped> {
        return Optional<Wrapped>(value)
    }
    
    var isPresent: Bool {
        switch self {
        case .some(_):
            return true
        case .none:
            return false
        }
    }
    
    func ifPresent(_ consumer: Consumer<Wrapped>) {
        switch self {
        case .some(let value):
            consumer(value)
        case .none:
            break
        }
    }
    
    func orElse(_ other: Wrapped) -> Wrapped {
        switch self {
        case .some(let value):
            return value
        case .none:
            return other
        }
    }
    
    func orElseGet(_ supplier: Supplier<Wrapped>) -> Wrapped {
        switch self {
        case .some(let value):
            return value
        case .none:
            return supplier()
        }
    }
}
