//
//  Java8.swift
//  FunctionalSwift
//
//  Created by 전건우 on 10/06/2019.
//  Copyright © 2019 Geonu Jeon. All rights reserved.
//

import Foundation

typealias Runnable = () throws -> Void
typealias Supplier<T> = () throws -> T
typealias Consumer<T> = (T) throws -> Void
typealias BiConsumer<T, U> = (T, U) throws -> Void

typealias UnaryOperator<T> = (T) throws -> T
typealias BinaryOperator<T> = (T, T) throws -> T

typealias Function<T, R> = (T) throws -> R
typealias BiFunction<T, U, R> = (T, U) throws -> R

typealias Predicate<T> = (T) throws -> Bool
typealias BiPredicate<T, U> = (T, U) throws -> Bool
