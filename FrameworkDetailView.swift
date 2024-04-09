//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Efe Mesudiyeli on 9.04.2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    var body: some View {
       
        
        VStack(spacing: 50){
            VStack{
                Image(MockData.sampleFramework.imageName)
                    .resizable()
                    .frame(width: 120, height: 120)
                Text(MockData.sampleFramework.name)
                    .font(.title)
                    .fontWeight(.semibold)
            }
            
            Text(MockData.sampleFramework.description)
                .padding()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Learn More")
                    .frame(width: 300, height: 50)
                    .background(Color.yellow)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
            })
        }
    }
}

#Preview {
    FrameworkDetailView()
}
