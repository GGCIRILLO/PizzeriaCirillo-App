//
//  BillView.swift
//  Pizzeria Cirillo
//
//  Created by Luigi Cirillo on 12/03/23.
//

import SwiftUI

struct BillView: View {
    @EnvironmentObject var bill : Bill
    @State var alert : Bool = false
    
    var body: some View {
            VStack {
                Text("Your bill")
                    .font(.custom("Lobster-Regular", size: 35))
                    .padding()
                
                if bill.selectedFood.isEmpty {
                    Text("Buy some food to see your bill!")
                        .foregroundColor(.secondary)
                } else {
                List {
                    ForEach(bill.selectedFood) { food in
                        HStack {
                            Text(food.name)
                            Spacer()
                            Text("€ " + String(food.price))
                            Image(systemName: "trash")
                                .foregroundColor(.accentColor)
                                .onTapGesture {
                                    bill.selectedFood.removeAll{
                                        currentFood in
                                        food == currentFood
                                    }
                                    
                                    bill.finalBill = bill.finalBill - food.price
                                }
                        }
                        .font(.system(size: 15))
                        
                    }
                    HStack {
                        Text("Final bill: ")
                        Spacer()
                        Text("€ " + String(bill.finalBill))
                    }
                    .padding()
                    .font(.title3)
               
                }
                    Button {
                        alert.toggle()
                    } label: {
                        Text("Pay now")
                            .foregroundColor(.white)
                            .font(.title2)
                            .bold()
                            .padding(.vertical, 20)
                            .padding(.horizontal, 50)
                            .background(.red)
                            .clipShape(RoundedRectangle(cornerRadius: 14))
                            .padding()
                    }
                    .alert(isPresented: $alert) {
                        Alert(title: Text("Thank you!"),
                              message: Text("Your order is being processed. It is going to be at your home in 20 min more or less"),
                              dismissButton: .destructive(Text("Ok")) {
                            bill.selectedFood.removeAll()
                            bill.finalBill = 0
                        }
                    )}
                
            }
            
        }
    }
}

struct BillView_Previews: PreviewProvider {
    static var previews: some View {
        BillView()
            .environmentObject(Bill())
    }
}
