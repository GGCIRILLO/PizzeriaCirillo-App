//
//  Models.swift
//  Pizzeria Cirillo
//
//  Created by Luigi Cirillo on 12/03/23.
//

import Foundation

struct Course : Identifiable {
    let id = UUID()
    let type : String
    let image : String
}

struct Food : Identifiable, Equatable {
    let id = UUID()
    let name : String
    let price : Float
    let ingredients : String 
}

class Bill : ObservableObject {
    @Published var selectedFood : [Food] = []
    @Published var finalBill : Float = 0
}
