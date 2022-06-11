//
//  ViewController.swift
//  DependencyInjection
//
//  Created by Mac on 11/06/22.
//  Copyright © 2022 Mac. All rights reserved.
//

import UIKit

class CheckoutVC: UIViewController {
    let checkoutViewModel = CheckoutViewModel(cart: Cart())
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        checkoutViewModel.price.bind(listner: {(price) in
            print("property change \(price)")
            })
        
    }

    @IBAction func makePayment_(_ sender: Any) {
        checkoutViewModel.makePayment(completion:{(price) in
            print("price needs to be paid \(price)")
        })
    }
}
