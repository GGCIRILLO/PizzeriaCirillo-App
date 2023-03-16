//
//  AppetizersMenuView.swift
//  Pizzeria Cirillo
//
//  Created by Luigi Cirillo on 13/03/23.
//

import SwiftUI

struct MenuView: View {
    @ObservedObject var myData = FoodData()
    @EnvironmentObject var bill : Bill
    @ObservedObject var DataCourses = CoursesData()
    
    var course : Course
    
    var body: some View {
        VStack {
            Text(course.type)
                .font(.custom("Lobster-Regular", size: 35))
            List {
                if course.type == "Appetizers" {
                    ForEach(myData.appetizers) { food in
                        Button {
                            bill.selectedFood.append(food)
                            bill.finalBill = bill.finalBill + food.price
                        } label: {
                            HStack {
                                if bill.selectedFood.contains(food) {
                                    Text(food.name)
                                        .font(.headline)
                                        .foregroundColor(.red)
                                } else {
                                    Text(food.name)
                                        .font(.headline)
                                }
                                Spacer()
                                Text("€ " + String(food.price))
                            }
                            .foregroundColor(.primary)
                        }

                    }
                }
                
                if course.type == "Pizzas" {
                    ForEach(myData.pizzas) { food in
                        Button {
                            bill.selectedFood.append(food)
                            bill.finalBill = bill.finalBill + food.price
                        } label: {
                            HStack {
                                VStack (alignment: .leading){
                                    if bill.selectedFood.contains(food) {
                                        Text(food.name)
                                            .font(.headline)
                                            .foregroundColor(.red)
                                    } else {
                                        Text(food.name)
                                            .font(.headline)
                                    }
                                        
                                    Text(food.ingredients)
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                }
                                Spacer()
                                Text("€ " + String(food.price))
                            }
                            .foregroundColor(.primary)
                        }

                    }
                }
                
                if course.type == "Burgers" {
                    ForEach(myData.burgers) { food in
                        Button {
                            bill.selectedFood.append(food)
                            bill.finalBill = bill.finalBill + food.price
                        } label: {
                            HStack {
                                VStack (alignment: .leading){
                                    if bill.selectedFood.contains(food) {
                                        Text(food.name)
                                            .font(.headline)
                                            .foregroundColor(.red)
                                    } else {
                                        Text(food.name)
                                            .font(.headline)
                                    }
                                        
                                    Text(food.ingredients)
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                }
                                Spacer()
                                Text("€ " + String(food.price))
                            }
                            .foregroundColor(.primary)
                        }

                    }
                }
                
                if course.type == "Desserts" {
                    ForEach(myData.desserts) { food in
                        Button {
                            bill.selectedFood.append(food)
                            bill.finalBill = bill.finalBill + food.price
                        } label: {
                            HStack {
                                VStack {
                                    VStack (alignment: .leading){
                                        if bill.selectedFood.contains(food) {
                                            Text(food.name)
                                                .font(.headline)
                                                .foregroundColor(.red)
                                        } else {
                                            Text(food.name)
                                                .font(.headline)
                                        }
                                            
                                        Text(food.ingredients)
                                            .font(.subheadline)
                                            .foregroundColor(.secondary)
                                    }
                                }
                                Spacer()
                                Text("€ " + String(food.price))
                            }
                            .foregroundColor(.primary)
                        }

                    }
                }
                
                if course.type == "Drinks" {
                    ForEach(myData.drinks) { food in
                        Button {
                            bill.selectedFood.append(food)
                            bill.finalBill = bill.finalBill + food.price
                        } label: {
                            HStack {
                                VStack (alignment: .leading){
                                    if bill.selectedFood.contains(food) {
                                        Text(food.name)
                                            .font(.headline)
                                            .foregroundColor(.red)
                                    } else {
                                        Text(food.name)
                                            .font(.headline)
                                    }
                                        
                                    Text(food.ingredients)
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                }
                                Spacer()
                                Text("€ " + String(food.price))
                            }
                            .foregroundColor(.primary)
                        }

                    }
                }
            }
        }
    }
}

struct MenuView_Preview: PreviewProvider {
    static var previews: some View {
        MenuView(course: Course(type: "Pizzas", image: "antipasti"))
            .environmentObject(Bill())
    }
}


//                    if bill.selectedFood.contains(where: {$0 == appetizer}) {
//                        bill.selectedFood.remove(at: bill.selectedFood.firstIndex(of: appetizer) ?? -1)
//                    }
