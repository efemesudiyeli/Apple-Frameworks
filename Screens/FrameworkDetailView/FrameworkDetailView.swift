//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Efe Mesudiyeli on 9.04.2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @State private var isShowingSafariView: Bool = false
    
    var body: some View {
        VStack{
            Spacer()
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(BorderedProminentButtonStyle())
            .controlSize(.large)
            .tint(.red)
            .padding()
            
            
        }.fullScreenCover(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}
