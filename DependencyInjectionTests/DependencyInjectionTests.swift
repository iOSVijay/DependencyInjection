//
//  DependencyInjectionTests.swift
//  DependencyInjectionTests
//
//  Created by Mac on 11/06/22.
//  Copyright © 2022 Mac. All rights reserved.
//

import XCTest
@testable import DependencyInjection

class DependencyInjectionTests: XCTestCase {

    var sut = CheckoutViewModel(cart: TestCart())
    
    func testCheckoutVM()  {
         sut.makePayment()
        
    }

}

class TestCart: cartProtocol {
    var products: [String : Double] = [:]
    
    func getPaymentAmount() -> Double {
        return 12.0
    }
    
    
}
