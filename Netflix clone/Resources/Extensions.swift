//
//  Extensions.swift
//  Netflix clone
//
//  Created by MAC-Anas on 29/6/2023.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).capitalized + self.lowercased().dropFirst()
    }
}
