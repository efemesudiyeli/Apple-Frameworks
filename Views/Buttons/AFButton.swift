//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Efe Mesudiyeli on 9.04.2024.
//

import SwiftUI

struct AFButton: View {
    var title:String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundStyle(.black)
            .frame(width: 300, height: 50)
            .background(Color.yellow)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
    }
}

#Preview {
    AFButton(title: "Test Title")
}
