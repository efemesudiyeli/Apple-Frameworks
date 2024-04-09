//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Efe Mesudiyeli on 9.04.2024.
//

import SwiftUI

struct FrameworkGridView: View {
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible()),
    ]
    
    var body: some View {
   
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(MockData.frameworks){ framework in
                        FrameworkTitleView(framework: framework)
                    }
                }.navigationTitle("🍎 Frameworks")
            }
        }
    }
}

#Preview {
    FrameworkGridView()  
}

struct FrameworkTitleView: View {
    let framework: Framework
    
    var body: some View {
        VStack(spacing: 2) {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}




