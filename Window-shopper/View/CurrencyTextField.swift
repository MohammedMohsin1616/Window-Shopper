//
//  CustomTextField.swift
//  Window-shopper
//
//  Created by Mohammed Mohsin Sayed on 11/12/18.
//  Copyright © 2018 Mohammed Mohsin Sayed. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {

    
    override func prepareForInterfaceBuilder() {
        setupTextField()
    }
    override func awakeFromNib() {
        super.awakeFromNib()

        setupTextField()
    }
    
    func setupTextField() {
        
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        textAlignment = .center
        layer.cornerRadius = 5.0
        
        if let p = placeholder {
            
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
           
        }
    }

}

