//
//  TipsView.swift
//  TravelHelper
//
//  Created by guntars.grants on 22/02/2021.
//
// Decoding Tips JSON and showing it in list in TipsView

import SwiftUI

struct TipsView: View {
    let tips: [Tip]
    
    init() {
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        tips = try! JSONDecoder().decode([Tip].self, from: data)
    }
    var body: some View {
        List(tips, id: \.text, children: \.children) { tip in
            if tip.children != nil{
                Label(tip.text, systemImage: "quote.bubble")
                      .font(.headline)
            } else {
                Text(tip.text)
            }
        }
        .navigationTitle("Tips")
    }
}

struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView()
    }
}