//
//  Data.swift
//  Pizzeria Cirillo
//
//  Created by Luigi Cirillo on 12/03/23.
//

import Foundation

class CoursesData : ObservableObject {
    var courses : [Course] = [
        Course(type: "Appetizers", image: "antipasti"),
        Course(type: "Pizzas", image: "pizza"),
        Course(type: "Burgers", image: "burgers"),
        Course(type: "Desserts", image: "dolci"),
        Course(type: "Drinks", image: "bibite")
    ]
}

class FoodData : ObservableObject {
    
    var appetizers : [Food] = [
        Food(name: "Crocchè", price: 2.00, ingredients: ""),
        Food(name: "Frittatina", price: 2.00, ingredients: ""),
        Food(name: "Zeppole", price: 2.00, ingredients: ""),
        Food(name: "Melanzane fritte", price: 3.00, ingredients: ""),
        Food(name: "Arancini", price: 3.00, ingredients: ""),
        Food(name: "Patatine", price: 4.00, ingredients: ""),
        Food(name: "Patatine e wurstel", price: 4.50, ingredients: ""),
        Food(name: "Mozzarelline", price: 4.00, ingredients: ""),
        Food(name: "Alette di pollo", price: 5.00, ingredients: ""),
        Food(name: "Chele di granchio", price: 5.00, ingredients: ""),
        Food(name: "Montanare", price: 6.00, ingredients: "")
    ]
    
    var pizzas : [Food] = [
        Food(name: "Marinara", price: 6.00, ingredients: "Tomato sauce, garlic, origan"),
        Food(name: "Margherita", price: 6.00, ingredients: "Tomato sauce, mozzarella, basil"),
        Food(name: "Diavola", price: 6.00, ingredients: "Tomato sauce, mozzarella, origan, spicy salami"),
        Food(name: "Ripieno", price: 8.00, ingredients: "Tomato sauce, mozzarella, ricotta, salami, pepper"),
        Food(name: "Capricciosa", price: 7.00, ingredients: "Tomato sauce, mozzarella, artichokes, mushrooms, anchovies, black olives, capers"),
        Food(name: "Filetto", price: 7.00, ingredients: "Cherry tomatoes, mozzarella, basil"),
        Food(name: "Bufalina", price: 8.00, ingredients: "Cherry tomatoes, buffalo mozzarella, basil"),
        Food(name: "Siciliana", price: 8.00, ingredients: "Tomato sauce, mozzarella, eggplants, basil"),
        Food(name: "Pulcinella", price: 8.00, ingredients: "Sausages, friarelli, mozzarella"),
        Food(name: "Mimosa", price: 8.00, ingredients: "Cream, mozzarella, ham and corn"),
        Food(name: "Viennese", price: 8.00, ingredients: "Wurstel, fried potetoes, mozzarella"),
        Food(name: "Patanella", price: 9.00, ingredients: "Sausages, potatoes, mozzarella"),
        Food(name: "Completa", price: 10.00, ingredients: "Fried pizza with ricotta, tomato, cicoli and pepper")
    ]
    
    var burgers : [Food] = [
        Food(name: "Basic", price: 7.00, ingredients: "Baked ham and mozzarella"),
        Food(name: "Basic 2.0", price: 7.00, ingredients: "Ham and mozzarella"),
        Food(name: "Vienna", price: 8.00, ingredients: "Wurstel, patate, mozzarella"),
        Food(name: "Napoli", price: 8.00, ingredients: "Sausages, friarelli, mozzarella"),
        Food(name: "Young", price: 9.00, ingredients: "Cherry tomatoes, lettuce and mozzarella"),
        Food(name: "Pork", price: 10.00, ingredients: "Porchetta, scamorza cheese and chips")
    ]
    
    var desserts : [Food] = [
        Food(name: "Panpastiera", price: 8.00, ingredients: "Shortcrust pastry made with breadcrumbs, crumb-based cream and lemon zest and a reduction of Lacryma Christi del Vesuvio wine to garnish"),
        Food(name: "Pancaprese", price: 8.00, ingredients: "Sweet chocolate bread with black cherries"),
        Food(name: "Tiramisù", price: 7.00, ingredients: "Lady's fingers dipped in coffee and Italian liquor, layered with a whipped mixture of eggs, mascarpone cheese, sugar and chocolate"),
        Food(name: "Panna cotta", price: 7.00, ingredients: "Sweetened cream thickened with gelatine")
    ]
    
    var drinks : [Food] = [
        Food(name: "Gin tonic", price: 10.00, ingredients: "Gin, lime juice, tonic water"),
        Food(name: "Old Fashioned", price: 10.00, ingredients: "Bourbon, bitter, sugar, tonic water"),
        Food(name: "The bee's knees", price: 10.00, ingredients: "Gin, honey, fresh lemon juice"),
        Food(name: "Sidecar", price: 10.00, ingredients: "Cognac, orange liqueur, lemon juice"),
        Food(name: "Red wine Spain", price: 10.00, ingredients: "Black currants, cherries, vanilla, coffee"),
        Food(name: "White wine France", price: 10.00, ingredients: "Citrus notes, gooseberry, mint"),
        Food(name: "Beer", price: 7.00, ingredients: "Made by us with love")
    ]
}
