//
//  CardView.swift
//  Pizzeria Cirillo
//
//  Created by Luigi Cirillo on 12/03/23.
//

import SwiftUI

struct CardView: View {
    
    var course : Course
    
    var body: some View {
        ZStack(alignment: .bottomLeading){
            Image(course.image)
                .resizable()
                .scaledToFill()
                .frame(height: 150)
                .cornerRadius(14)
            
            Color(.black)
                .opacity(0.4)
                .frame(height: 150)
                .cornerRadius(14)
            
            Text(course.type)
                .font(.custom("Lobster-Regular", size: 45))
                .bold()
                .foregroundColor(.white)
                .padding()
                
            
        }
        .padding()
        .shadow(radius: 10)

    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(course: Course(type: "Prova", image: "pizza"))
    }
}
