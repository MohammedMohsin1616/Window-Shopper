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

    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        
        let currencyLabel = UILabel(frame: CGRect(x: 0, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLabel.backgroundColor = #colorLiteral(red: 0.9850546718, green: 0.9801028371, blue: 0.9580647349, alpha: 0.5764126712)
        currencyLabel.textAlignment = .center
        currencyLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        currencyLabel.layer.cornerRadius = 5.0
        currencyLabel.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current 
        
        currencyLabel.text = formatter.currencySymbol
        addSubview(currencyLabel)
    }
    
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
        clipsToBounds = true
        
        if let p = placeholder {
            
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
           
        }
    }

}

