//
//  Extentions.swift
//  DependencyInjection
//
//  Created by Mac on 11/06/22.
//  Copyright © 2022 Mac. All rights reserved.
//

import Foundation

final class Box<T> {
    typealias Listner = (T) -> Void?
    var listner: Listner?
    
    var value: T {
        didSet {
            listner?(value)
        }
    }
    
    init(_ value: T) {
        self.value = value
    }
    
    func bind(listner: Listner?)  {
        self.listner = listner
        listner?(value)
    }
}
