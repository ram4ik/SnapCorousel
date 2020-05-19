//
//  Card.swift
//  SnapCorousel
//
//  Created by ramil on 19.05.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import Foundation

struct Card: Decodable, Hashable, Identifiable {
    var id: Int
    var name: String = ""
}
