//
//  ContentView.swift
//  SnapCorousel
//
//  Created by ramil on 19.05.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var UIState: UIStateModel
    
    var body: some View {
        let spacing: CGFloat = 20
        let widthOfHiddenCards: CGFloat = 32
        let cardHeight: CGFloat = 279
        
        let items = [
            Card( id: 0, name: "Bim"),
            Card( id: 1, name: "Bam"),
            Card( id: 2, name: "Bum"),
            Card( id: 3, name: "Bom")
        ]
        
        return Canvas {
                Carousel(numberOfItems: CGFloat(items.count), spacing: spacing, widthOfHiddenCards: widthOfHiddenCards) {
                    ForEach(items, id: \.self.id) { item in
                        Item(_id: Int(item.id),
                             spacing: spacing,
                             widthOfHiddenCards: widthOfHiddenCards,
                             cardHeight: cardHeight) {
                                Text("\(item.name)")
                            }
                            .foregroundColor(Color.gray)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(color: Color.black, radius: 2, x: 0, y: 0)
                            .transition(AnyTransition.slide)
                            .animation(.spring())
                    }
                }.environmentObject(self.UIState)
        }
    }
}
