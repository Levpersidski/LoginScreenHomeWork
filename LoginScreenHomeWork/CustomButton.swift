//
//  CustomButton.swift
//  LoginScreenHomeWork
//
//  Created by Роман Бакаев on 07.09.2023.
//

import UIKit

final class CustomButton : UIButton {
    init(title: String, backgroundColor: UIColor, isShadow: Bool, titleColor: UIColor = .white) {
        super .init(frame: .zero)
        setupCustomButton(title: title, backgroundColor: backgroundColor, isShadow: isShadow, titleColor: titleColor)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupCustomButton(title: String, backgroundColor: UIColor, isShadow: Bool, titleColor : UIColor) {
        
        setTitle(title, for: .normal)
        setTitleColor(titleColor, for: .normal)
        titleLabel?.font = .boldSystemFont(ofSize: 20)
        layer.cornerRadius = 10
        self.backgroundColor = backgroundColor
        
        if isShadow {
            layer.shadowColor = UIColor.black.cgColor
            layer.shadowRadius = 7
            layer.shadowOpacity = 0.4
            layer.shadowOffset = CGSize(width: 0, height: 7)

        }
        
        
    }
}
