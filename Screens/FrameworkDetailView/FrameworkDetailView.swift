//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Efe Mesudiyeli on 9.04.2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView: Bool = false
    
    var body: some View {
        VStack{
            
            Spacer()
            XDismissButton(isShowingModal: $isShowingDetailView)
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button(action: {
                isShowingSafariView = true
            }, label: {
                AFButton(title: "Learn More")
            })
            
            Spacer()
        }.fullScreenCover(isPresented: $isShowingSafariView) {
                        SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
