//
//  Pokemon.swift
//  hpbar
//
//  Created by Rafael Almeida on 11/10/21.
//

import SwiftUI

struct HPStatus {
    private(set) var hpLevel: CGFloat
    private(set) var hpColor: Color = .green
    private(set) var remainHpLevel: CGFloat
    
    init(hpLevel: Int) {
        self.hpLevel = CGFloat(hpLevel)
        remainHpLevel = CGFloat(hpLevel)
    }

    mutating func hit(damage: Int) {
        remainHpLevel -= CGFloat(damage)
        
        switch remainHpLevel {
        case 50...100:
            hpColor = .yellow
        case ..<50:
            hpColor = .red
        default:
            hpColor = .green
        }
    }
}
