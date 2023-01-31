//
//  UIStackView.swift
//  Junior(LogIn)
//
//  Created by Дмитрий Процак on 18.10.2022.
//

import UIKit

//расширения для более удобного использования работой со стек вью
extension UIStackView {
    convenience init(arrangedSubviews: [UIView], axis: NSLayoutConstraint.Axis, spacing: CGFloat, distribution: UIStackView.Distribution) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.axis = axis
        self.spacing = spacing
        self.distribution = distribution
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}


