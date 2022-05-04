//
//  HPBarView.swift
//  Pokemon Battle
//
//  Created by Rafael Almeida on 12/10/21.
//

import SwiftUI

struct HPBarView: View {
     var hpStatus: HPStatus
    
    init(hpLevel: Int) {
        self.hpStatus = HPStatus(hpLevel: hpLevel)
    }
    
    var body: some View {
        HStack {
            Rectangle()
                .frame(width: hpStatus.remainHpLevel, height: 10)
                .foregroundColor(hpStatus.hpColor)
                .animation(Animation.easeOut(duration: 1.0), value: hpStatus.remainHpLevel)
                .mask(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 20, style: .circular)
                        .frame(width: hpStatus.hpLevel, height: 10)
                        .clipped()
                }
                .background(
                    RoundedRectangle(cornerRadius: 20, style: .circular)
                        .frame(width: hpStatus.hpLevel, height: 10)
                        .foregroundColor(.gray.opacity(0.2))
                    , alignment: .leading)
                
        }
        .frame(width: hpStatus.hpLevel, height: 10, alignment: .leading)
    }
    
    mutating func hit(damage: Int) {
        hpStatus.hit(damage: damage)
    }
}

struct HPBarView_Previews: PreviewProvider {
    static var previews: some View {
        HPBarView(hpLevel: 150)
            .previewLayout(.fixed(width: 250, height: 100))
    }
}
