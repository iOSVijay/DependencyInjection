//
//  CheckoutViewModel.swift
//  DependencyInjection
//
//  Created by Mac on 11/06/22.
//  Copyright © 2022 Mac. All rights reserved.
//

import Foundation

protocol cartProtocol {
    var products: [String: Double] {get set}
    func getPaymentAmount() -> Double
}

class CheckoutViewModel {
    
    var cart: cartProtocol
    var price = Box(0.0)
    
    init(cart: cartProtocol) {
        self.cart = cart
    }
    
    func makePayment(completion: (Double)-> Void)  {
        //some web service call
        price.value =  89.2
        print("made payment of \(cart.getPaymentAmount())")
        completion(cart.getPaymentAmount())
    }
}

class Cart: cartProtocol {

    var products: [String: Double] = ["PRS": 1082345.0, "fender": 2345.0]
    
    func getPaymentAmount() -> Double {
     
        var payableAmount = 0.0
        for key in products.keys {
            payableAmount += products[key] ?? 0.0
        }
        return payableAmount
    }
    
}

