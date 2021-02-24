//
//  Tip.swift
//  TravelHelper
//
//  Created by guntars.grants on 22/02/2021.
//
// Importing JSON for tips

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
