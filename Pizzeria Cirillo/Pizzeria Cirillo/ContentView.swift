//
//  ContentView.swift
//  Pizzeria Cirillo
//
//  Created by Luigi Cirillo on 12/03/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var myData = CoursesData()
   
    
    let myColor: Color = Color("MyYellow")
    @State var bill = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Text("Pizzeria Cirillo")
                        .font(.custom("Lobster-Regular", size: 50))
                        .padding(.vertical)
                    
                    ForEach(myData.courses) { course in
                        NavigationLink {
                            MenuView(course: course)
                        } label: {
                            CardView(course: course)
                        }
                    }
                }
            }
            .overlay (alignment: .bottomTrailing){
                Button {
                    bill.toggle()
                } label: {
                    Image(systemName: "menucard.fill")
                        .padding()
                        .font(.title)
                        .foregroundColor(.black)
                        .background(myColor)
                        .clipShape(Circle())
                        .padding()
                }
                .sheet(isPresented: $bill) {
                    BillView()
                        .presentationDetents([.medium])
                }
        }
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Bill())
    }
}
